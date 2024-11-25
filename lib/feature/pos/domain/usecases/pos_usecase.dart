import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/core/utils/logger.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/product/product_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/repositories/product_repository.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_item/pos_item_entity.dart';

class PosUsecase {
  final ProductRepository _productRepository;

  PosUsecase({required ProductRepository productRepository})
      : _productRepository = productRepository;

  Future<DataState<List<PosItemEntity>>> getPosItems() async {
    try {
      DataState<List<ProductEntity>> getProducts =
          await _productRepository.getList();

      List<PosItemEntity> posItems = [];

      if (getProducts.isSuccess) {
        // Transform products into cart items
        posItems = getProducts.data!
            .map((product) => PosItemEntity(
                product: product, orderCount: 0, subTotalAmount: 0))
            .toList();
      }

      return DataState.success(posItems);
    } catch (e, stackTrace) {
      Log.error(e.toString(), stackTrace: stackTrace);
      return DataState.error('Error fetching cart items.');
    }
  }
}
