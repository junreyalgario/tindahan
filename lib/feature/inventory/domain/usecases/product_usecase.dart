import 'package:tienda_pos/core/domain/entity_usecase.dart';
import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/core/utils/logger.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/inventory_transaction/inventory_transaction_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/product/product_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/repositories/product_repository.dart';

class ProductUsecase extends EntityUsecase<ProductEntity> {
  final ProductRepository _productRepository;

  ProductUsecase({required ProductRepository productRepository})
      : _productRepository = productRepository;

  @override
  Future<DataState<bool>> delete(int id) {
    return _productRepository.delete(id);
  }

  @override
  Future<DataState<ProductEntity>> getById(int id) {
    return _productRepository.getById(id);
  }

  @override
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

  @override
  Future<DataState<bool>> insert(ProductEntity entity) {
    double stockLevel = 0;

    for (InventoryTransactionEntity transaction
        in entity.inventory!.transactions) {
      stockLevel += transaction.quantity;
      transaction = transaction.copyWith(
        vendorName: transaction.vendorName ?? '',
        trsansactionDate: DateTime.now(),
        trsansactionType: InventoryTransactionType.restock.value,
      );
    }

    entity = entity.copyWith(
      inventory: entity.inventory!.copyWith(stockLevel: stockLevel),
    );

    return _productRepository.insert(entity);
  }

  @override
  Future<DataState<List<ProductEntity>>> search(String query) {
    return _productRepository.search(query);
  }

  @override
  Future<DataState<bool>> update(ProductEntity entity) {
    return _productRepository.update(entity);
  }
}
