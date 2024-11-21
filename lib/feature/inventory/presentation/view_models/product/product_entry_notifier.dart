import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/category/category_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/uom/uom_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/usecases/category_usecase.dart';
import 'package:tienda_pos/feature/inventory/domain/usecases/uom_usecase.dart';
import 'package:tienda_pos/feature/inventory/presentation/view_models/product/product_entry_state.dart';
import 'package:tienda_pos/feature/inventory/providers/category_providers.dart';
import 'package:tienda_pos/feature/inventory/providers/uom_providers.dart';

class ProductEntryNotifier extends StateNotifier<ProductEntryState> {
  ProductEntryNotifier({
    required CategoryUsecase categoryUsecase,
    required UomUsecase uomUsecase,
  })  : _categoryUsecase = categoryUsecase,
        _uomUsecase = uomUsecase,
        super(const ProductEntryState()) {
    setCategories();
    setUomList();
  }

  final CategoryUsecase _categoryUsecase;
  final UomUsecase _uomUsecase;

  Future<void> setCategories() async {
    final result = await _categoryUsecase.getCategories();
    if (result.isSuccess) {
      state = state.copyWith(categories: result.data!);
    }
  }

  Future<void> setUomList() async {
    final result = await _uomUsecase.getList();
    if (result.isSuccess) {
      state = state.copyWith(uomList: result.data!);
    }
  }

  void setProductCategory(CategoryEntity? categoryEntity) {
    state = state.copyWith(
      product: state.product.copyWith(category: categoryEntity),
    );
  }

  void setProductUom(UomEntity? uomEntity) {
    state = state.copyWith(
      product: state.product.copyWith(uom: uomEntity),
    );
  }
}

final productEntryProvider =
    StateNotifierProvider.autoDispose<ProductEntryNotifier, ProductEntryState>(
        (ref) {
  return ProductEntryNotifier(
    categoryUsecase: ref.read(categoryUseCaseProvider),
    uomUsecase: ref.read(uomUsecaseProvider),
  );
});
