import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/utils/logger.dart';
import 'package:tienda_pos/feature/inventory/domain/usecases/product_usecase.dart';
import 'package:tienda_pos/feature/inventory/presentation/view_models/inventory/inventory_state.dart';
import 'package:tienda_pos/feature/inventory/providers/product_providers.dart';

class InventoryNotifier extends StateNotifier<InventoryState> {
  InventoryNotifier({required ProductUsecase productUsecase})
      : _productUsecase = productUsecase,
        super(const InventoryState()) {
    setProductList();
  }

  final ProductUsecase _productUsecase;

  void setProductList() async {
    final result = await _productUsecase.getList();

    if (result.isSuccess) {
      state = state.copyWith(productList: result.data!);
    }
  }
}

final inventoryNotifierProvider =
    StateNotifierProvider.autoDispose<InventoryNotifier, InventoryState>((ref) {
  return InventoryNotifier(
    productUsecase: ref.read(productUsecaseProvider),
  );
});
