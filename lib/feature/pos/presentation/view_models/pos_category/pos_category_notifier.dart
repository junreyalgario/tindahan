import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/category/category_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/usecases/category_usecase.dart';
import 'package:tienda_pos/feature/inventory/providers/category_providers.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/pos_category/pos_category_state.dart';

class PosCategoryNotifier extends StateNotifier<PosCategoryState> {
  final CategoryUsecase _categoryUsecase;

  PosCategoryNotifier({required CategoryUsecase categoryUsecase})
      : _categoryUsecase = categoryUsecase,
        super(const PosCategoryState()) {
    setCategories();
  }

  void setCategories() async {
    final result = await _categoryUsecase.getPosCategories();
    if (result.isSuccess) {
      state = state.copyWith(
        categories: result.data!,
        activeCategory: result.data!.isNotEmpty ? result.data![0] : null,
      );
    }
  }

  void setActiveCategory(CategoryEntity? category) {
    state = state.copyWith(activeCategory: category);
  }
}

final posCategoryNotifierProvider =
    StateNotifierProvider.autoDispose<PosCategoryNotifier, PosCategoryState>(
        (ref) {
  return PosCategoryNotifier(
      categoryUsecase: ref.read(categoryUseCaseProvider));
});
