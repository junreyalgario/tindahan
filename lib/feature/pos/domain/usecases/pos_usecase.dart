import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/core/utils/logger.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/product/product_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/repositories/product_repository.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_item/pos_item_entity.dart';

// Usecase for managing POS-related logic and interacting with repositories
class PosUsecase {
  final ProductRepository _productRepository;

  // Constructor that initializes the product repository
  PosUsecase({required ProductRepository productRepository})
      : _productRepository = productRepository;

  // Fetches the list of POS items (cart items) by getting products from the repository
  Future<DataState<List<PosItemEntity>>> getPosItems() async {
    try {
      // Fetching products from the product repository
      DataState<List<ProductEntity>> getProducts =
          await _productRepository.getList();

      List<PosItemEntity> posItems = [];

      // If products are fetched successfully, transform them into POS items
      if (getProducts.isSuccess) {
        posItems = getProducts.data!
            .map((product) => PosItemEntity(
                product: product, orderCount: 0, subTotalAmount: 0))
            .toList();
      }

      // Return the list of POS items as a successful result
      return DataState.success(posItems);
    } catch (e, stackTrace) {
      // Log the error and return an error result
      Log.error(e.toString(), stackTrace: stackTrace);
      return DataState.error('Error fetching cart items.');
    }
  }
}
