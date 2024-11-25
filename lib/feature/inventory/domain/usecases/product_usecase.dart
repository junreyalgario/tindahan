import 'package:tienda_pos/core/domain/entity_usecase.dart';
import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/core/utils/logger.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/inventory/inventory_entity.dart';
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
    try {
      DataState<List<ProductEntity>> result =
          await _productRepository.getList();

      List<ProductEntity> updatedProducts = [];

      if (result.isSuccess) {
        updatedProducts = result.data!.map((ProductEntity product) {
          InventoryEntity inventory = product.inventoryList.reduce(
              (current, next) => current.id! > next.id! ? current : next);
          return product.copyWith(currentCost: inventory.cost);
        }).toList();
      }

      return DataState.success(updatedProducts);
    } catch (e, stackTrace) {
      Log.error(e.toString(), stackTrace: stackTrace);
      return DataState.error('Error fetching product list.');
    }
  }

  @override
  Future<DataState<bool>> insert(ProductEntity entity) {
    double stockOnHand = 0;
    for (InventoryEntity inventory in entity.inventoryList) {
      stockOnHand += inventory.stocks!;
    }
    return _productRepository.insert(
      entity.copyWith(stockOnHand: stockOnHand),
    );
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
