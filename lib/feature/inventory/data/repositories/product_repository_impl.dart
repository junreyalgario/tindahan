import 'package:realm/realm.dart';
import 'package:tienda_pos/core/constant/strings.dart';
import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/core/utils/logger.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/category_dao.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/inventory_dao.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/inventory_transaction_dao.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/product_dao.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/uom_dao.dart';
import 'package:tienda_pos/feature/inventory/data/models/inventory/inventory.dart';
import 'package:tienda_pos/feature/inventory/data/models/inventory_transaction/inventory_transaction.dart';
import 'package:tienda_pos/feature/inventory/data/models/product/product.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/inventory_transaction/inventory_transaction_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/product/product_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/repositories/product_repository.dart';

class ProductRepositoryImpl extends ProductRepository {
  final ProductDao _productDao;
  final InventoryDao _inventoryDao;
  final CategoryDao _categoryDao;
  final UomDao _uomDao;
  final InventoryTransactionDao _inventoryTransactionDao;

  ProductRepositoryImpl({
    required ProductDao productDao,
    required InventoryDao inventoryDao,
    required CategoryDao categoryDao,
    required UomDao uomDao,
    required InventoryTransactionDao inventoryTransactionDao,
  })  : _productDao = productDao,
        _inventoryDao = inventoryDao,
        _categoryDao = categoryDao,
        _uomDao = uomDao,
        _inventoryTransactionDao = inventoryTransactionDao;

  @override
  Future<DataState<bool>> insert(ProductEntity entity) async {
    try {
      Log.info('entity insert ->>> ${entity}');

      Inventory inventory = Inventory(
        _inventoryDao.getNextId(),
        entity.inventory!.currentCost,
        entity.inventory!.wac,
        entity.inventory!.stockLevel,
        entity.inventory!.reorderLevel,
        DateTime.now(),
        DateTime.now(),
        DateTime.now(),
      );

      RealmList<InventoryTransaction> inventoryTransactions =
          RealmList<InventoryTransaction>([]);
      int invetoryTransactionId = _inventoryTransactionDao.getNextId();

      for (InventoryTransactionEntity transactionEntity
          in entity.inventory!.transactions) {
        InventoryTransaction transaction = InventoryTransaction(
          invetoryTransactionId,
          transactionEntity.trsansactionType,
          transactionEntity.quantity,
          transactionEntity.costPerUnit,
          transactionEntity.trsansactionDate ?? DateTime.now(),
          DateTime.now(),
          DateTime.now(),
          inventory: inventory,
        );

        inventoryTransactions.add(transaction);
        invetoryTransactionId++;
      }

      inventory.transactions.addAll(inventoryTransactions);

      Product product = Product(
        _productDao.getNextId(),
        entity.photo ?? '',
        entity.name ?? '',
        entity.price ?? 0,
        DateTime.now(),
        DateTime.now(),
        inventory: inventory,
      );

      product.uom = _uomDao.getById(entity.uom!.id!);
      product.category = _categoryDao.getById(entity.category!.id!);

      _productDao.save(product);

      return DataState.success(true);
    } catch (e, stackTrace) {
      Log.error(e.toString(), stackTrace: stackTrace);
      return DataState.error(e.toString());
    }
  }

  @override
  Future<DataState<bool>> update(ProductEntity entity) async {
    try {
      Product product = $Product.fromJson(entity.toJson());
      product.category = _categoryDao.getById(product.category!.id);
      product.uom = _uomDao.getById(product.uom!.id);

      // for (InventoryEntity inventoryEntity in entity.inventoryList) {
      //   inventoryEntity = inventoryEntity.copyWith(updatedAt: DateTime.now());
      //   _inventoryDao.update($Inventory.fromJson(inventoryEntity.toJson()));
      // }

      // _productDao.update(product);

      return DataState.success(true);
    } catch (e, stackTrace) {
      Log.error(e.toString(), stackTrace: stackTrace);
      return DataState.error(e.toString());
    }
  }

  @override
  Future<DataState<List<ProductEntity>>> getList() async {
    try {
      List<ProductEntity> productEntities = [];
      Log.info('_productDao.getAll() ->> ${_productDao.getAll()}');
      for (Product productModel in _productDao.getAll()) {
        productEntities.add(ProductEntity.fromJson(productModel.toJson()));
      }

      return DataState.success(
          productEntities..sort((a, b) => a.name!.compareTo(b.name!)));
    } catch (e, stackTrace) {
      Log.error(e.toString(), stackTrace: stackTrace);
      return DataState.error(Strings.error_generic_message);
    }
  }
}
