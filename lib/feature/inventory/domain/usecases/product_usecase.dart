import 'package:tienda_pos/core/exceptions/not_found.dart';
import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/core/utils/logger.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/inventory/inventory_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/inventory_transaction/inventory_transaction_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/product/product_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/repositories/inventory_repository.dart';
import 'package:tienda_pos/feature/inventory/domain/repositories/product_repository.dart';

class ProductUsecase {
  final ProductRepository _productRepository;
  final InventoryRepository _inventoryRepository;

  ProductUsecase(
      {required ProductRepository productRepository,
      required InventoryRepository inventoryRepository})
      : _productRepository = productRepository,
        _inventoryRepository = inventoryRepository;

  Future<DataState<ProductEntity?>> getById(int id) async {
    DataState<ProductEntity?> getProductResult =
        await _productRepository.getById(id);

    if (getProductResult.isSuccess) {
      return DataState.success(getProductResult.data!);
    } else {
      throw NotFoundException('Product not found. No item exists with ID $id.');
    }
  }

  Future<DataState<List<ProductEntity>>> getList() async {
    DataState<List<ProductEntity>> result = await _productRepository.getList();

    if (result.isSuccess) {
      List<ProductEntity> updatedProducts = result.data!.map((product) {
        if (product.inventory!.transactions.isNotEmpty) {
          return product.copyWith(
            inventory: product.inventory!.copyWith(
              currentCost: product
                  .inventory!
                  .transactions[product.inventory!.transactions.length - 1]
                  .costPerUnit,
            ),
          );
        }
        return product;
      }).toList();

      return DataState.success(updatedProducts);
    }

    return result;
  }

  Future<DataState<bool>> insert(ProductEntity entity) {
    Log.info('product entity->> ${entity}');
    InventoryTransactionEntity transactionEntity = InventoryTransactionEntity(
      quantity: entity.inventory!.stockLevel,
      costPerUnit: entity.inventory!.currentCost,
      trsansactionDate: DateTime.now(),
      trsansactionType: InventoryTransactionType.restock.value,
    );

    entity = entity.copyWith(
        inventory:
            entity.inventory!.copyWith(transactions: [transactionEntity]));

    return _productRepository.insert(entity);
  }

  Future<DataState<bool>> update(ProductEntity entity) async {
    try {
      DataState<InventoryEntity?> findInvntryResult =
          await _inventoryRepository.getById(entity.inventory!.id!);

      if (findInvntryResult.data == null) {
        throw NotFoundException(
            'Product inventory not found. No item exists with PRODUCT: ${entity.name!} and INVENTORY ID: ${entity.inventory!.id!}.');
      }

      double stockAdjustment =
          entity.inventory!.stockLevel - findInvntryResult.data!.stockLevel;

      InventoryTransactionEntity transactionEntity = InventoryTransactionEntity(
        quantity: stockAdjustment,
        costPerUnit: entity.inventory!.currentCost,
        trsansactionDate: DateTime.now(),
        trsansactionType: InventoryTransactionType.adjustment.value,
      );

      entity = entity.copyWith(
          inventory:
              entity.inventory!.copyWith(transactions: [transactionEntity]));

      return _productRepository.update(entity);
    } catch (e, stacktrace) {
      Log.error(e.toString(), stackTrace: stacktrace);
      return DataState.error(
          'Error occurred while updating product: ${e.toString()}');
    }
  }
}
