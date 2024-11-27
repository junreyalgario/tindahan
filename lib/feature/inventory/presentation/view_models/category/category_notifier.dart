import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/category/category_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/usecases/category_usecase.dart';
import 'package:tienda_pos/feature/inventory/providers/category_providers.dart';

// Notifier for managing the state of a single CategoryEntity.
class CategoryNotifier extends StateNotifier<CategoryEntity> {
  CategoryNotifier(this._categoryUsecase) : super(const CategoryEntity());

  final CategoryUsecase _categoryUsecase;

  // Sets the current category state to the provided CategoryEntity.
  void setCategory(CategoryEntity categoryEntity) {
    state = categoryEntity;
  }

  // Updates the name of the current category and updates the state.
  void setCategoryName(String name) {
    state = state.copyWith(name: name);
  }

  // Saves the category: inserts a new category or updates an existing one.
  Future<DataState<bool>> saveCategory() async {
    if (state.id != null) {
      return _categoryUsecase.update(state); // Update existing category
    } else {
      return _categoryUsecase.insert(state); // Insert a new category
    }
  }

  // Deletes the category if it has a valid ID.
  Future<DataState<bool>> delete() async {
    if (state.id != null) {
      return _categoryUsecase.delete(state.id!); // Delete category by ID
    }

    return DataState.error('Failed to delete category.'); // Error if no ID
  }
}

// Provider for CategoryNotifier, making it available for dependency injection.
final categoryNortifierProvider =
    StateNotifierProvider.autoDispose<CategoryNotifier, CategoryEntity>((ref) {
  return CategoryNotifier(
      ref.read(categoryUseCaseProvider)); // Reading CategoryUsecase provider
});
