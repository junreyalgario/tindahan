import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/core/utils/logger.dart';
import 'package:tienda_pos/feature/inventory/domain/usecases/product_usecase.dart';
import 'package:tienda_pos/feature/inventory/presentation/view_models/inventory/inventory_state.dart';
import 'package:tienda_pos/feature/inventory/providers/product_providers.dart';

// Notifier for managing the state of the inventory (product list).
class InventoryNotifier extends StateNotifier<InventoryState> {
  // Constructor initializes the product use case and triggers the product list setup.
  InventoryNotifier({required ProductUsecase productUsecase})
      : _productUsecase = productUsecase,
        super(const InventoryState());

  final ProductUsecase _productUsecase;

  // Fetches the product list from the use case and updates the state with the result.
  Future<DataState> setProductList() async {
    final result = await _productUsecase.getList();

    if (result.isSuccess) {
      // If fetching products is successful, update the state with the product list.
      state = state.copyWith(productList: result.data!);
    }

    return result;
  }
}

// Provider for InventoryNotifier, making it available for dependency injection.
final inventoryNotifierProvider =
    StateNotifierProvider.autoDispose<InventoryNotifier, InventoryState>((ref) {
  return InventoryNotifier(
    productUsecase:
        ref.read(productUsecaseProvider), // Reading ProductUsecase provider.
  );
});
