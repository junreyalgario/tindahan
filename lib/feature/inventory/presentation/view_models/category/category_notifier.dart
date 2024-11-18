import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/category/category_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/usecases/category/category_usecase.dart';
import 'package:tienda_pos/feature/inventory/providers/category_providers.dart';

class CategoryNotifier extends StateNotifier<CategoryEntity> {
  CategoryNotifier(this._categoryUsecase) : super(const CategoryEntity());

  final CategoryUsecase _categoryUsecase;

  void setCategory(CategoryEntity categoryEntity) {
    state = categoryEntity;
  }

  void setCategoryName(String name) {
    state = state.copyWith(name: name);
  }

  Future<DataState<bool>> saveCategory() async {
    if (state.id != null) {
      return _categoryUsecase.update(state);
    } else {
      return _categoryUsecase.insert(state);
    }
  }

  Future<DataState<bool>> delete() async {
    if (state.id != null) {
      return _categoryUsecase.delete(state.id!);
    }

    return DataState.error('Failed to delete category.');
  }
}

final categoryNortifierProvider =
    StateNotifierProvider.autoDispose<CategoryNotifier, CategoryEntity>((ref) {
  return CategoryNotifier(ref.read(categoryUseCaseProvider));
});
