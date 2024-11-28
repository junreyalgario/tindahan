import 'package:realm/realm.dart';
import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/core/utils/logger.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/category_dao.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/inventory_dao.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/product_dao.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/uom_dao.dart';
import 'package:tienda_pos/feature/inventory/data/models/category/category.dart';
import 'package:tienda_pos/feature/inventory/data/models/inventory/inventory.dart';
import 'package:tienda_pos/feature/inventory/data/models/product/product.dart';
import 'package:tienda_pos/feature/inventory/data/models/uom/uom.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/inventory/inventory_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/product/product_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/repositories/product_repository.dart';

class ProductRepositoryImpl extends ProductRepository {
  final ProductDao _productDao;
  final InventoryDao _inventoryDao;
  final CategoryDao _categoryDao;
  final UomDao _uomDao;

  ProductRepositoryImpl({
    required ProductDao productDao,
    required InventoryDao inventoryDao,
    required CategoryDao categoryDao,
    required UomDao uomDao,
  })  : _productDao = productDao,
        _inventoryDao = inventoryDao,
        _categoryDao = categoryDao,
        _uomDao = uomDao;

  @override
  Future<DataState<bool>> delete(int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<DataState<ProductEntity>> getById(int id) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<DataState<List<ProductEntity>>> getList() async {
    try {
      List<ProductEntity> productEntities = [];

      for (Product productModel in _productDao.getAll()) {
        productEntities.add(ProductEntity.fromJson(productModel.toJson()));
      }

      return DataState.success(
          productEntities..sort((a, b) => a.name!.compareTo(b.name!)));
    } catch (e, stackTrace) {
      Log.error(e.toString(), stackTrace: stackTrace);
      return DataState.error(e.toString());
    }
  }

  @override
  Future<DataState<bool>> insert(ProductEntity entity) async {
    try {
      Category? category = _categoryDao.getById(entity.category!.id!);
      Uom? uom = _uomDao.getById(entity.uom!.id!);
      int inventoryId = _inventoryDao.getNextId();

      Product product = Product(
        _productDao.getNextId(),
        entity.name!,
        entity.price!,
        entity.lowStockLevel!,
        entity.stockOnHand!,
        DateTime.now(),
        DateTime.now(),
        category: category!,
        uom: uom,
        inventories: RealmList<Inventory>([]),
      );

      RealmList<Inventory> inventories = RealmList<Inventory>([]);

      for (InventoryEntity inventoryEntity in entity.inventoryList) {
        final Inventory inventory = Inventory(
          inventoryId,
          inventoryEntity.cost!,
          inventoryEntity.stocks!,
          DateTime.now(),
          DateTime.now(),
          product: product,
        );

        inventories.add(inventory);
        inventoryId++;
      }

      product.inventories.addAll(inventories);
      _productDao.save(product);

      return DataState.success(true);
    } catch (e, stackTrace) {
      Log.error(e.toString(), stackTrace: stackTrace);
      return DataState.error(e.toString());
    }
  }

  @override
  Future<DataState<List<ProductEntity>>> search(String query) {
    // TODO: implement search
    throw UnimplementedError();
  }

  @override
  Future<DataState<bool>> update(ProductEntity entity) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<DataState<bool>> insertAll(List<ProductEntity> entities) async {
    return DataState.success(true);
  }
}
