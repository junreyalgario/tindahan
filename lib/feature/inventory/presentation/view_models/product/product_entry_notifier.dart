import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/category/category_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/usecases/category_usecase.dart';
import 'package:tienda_pos/feature/inventory/presentation/view_models/product/product_entry_state.dart';
import 'package:tienda_pos/feature/inventory/providers/category_providers.dart';

class ProductEntryNotifier extends StateNotifier<ProductEntryState> {
  ProductEntryNotifier(this._categoryUsecase)
      : super(const ProductEntryState()) {
    setCategories();
  }

  final CategoryUsecase _categoryUsecase;

  Future<void> setCategories() async {
    final result = await _categoryUsecase.getCategories();
    if (result.isSuccess) {
      state = state.copyWith(categories: result.data!);
    }
  }

  void setProductCategory(CategoryEntity? categoryEntity) {
    state = state.copyWith(
      product: state.product.copyWith(category: categoryEntity),
    );
  }
}

final productEntryProvider =
    StateNotifierProvider.autoDispose<ProductEntryNotifier, ProductEntryState>(
        (ref) {
  return ProductEntryNotifier(ref.read(categoryUseCaseProvider));
});
