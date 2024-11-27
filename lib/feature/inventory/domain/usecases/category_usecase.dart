import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/core/utils/logger.dart';
import 'package:tienda_pos/feature/inventory/domain/repositories/category_repository.dart';

import '../entities/category/category_entity.dart';

class CategoryUsecase {
  // Constructor accepts a CategoryRepository to interact with the data layer.
  CategoryUsecase({required CategoryRepository categoryRepository})
      : _categoryRepository = categoryRepository;

  final CategoryRepository _categoryRepository;

  // Inserts a new category using the repository method and returns the result.
  Future<DataState<bool>> insert(CategoryEntity categoryEntity) {
    return _categoryRepository.insert(categoryEntity);
  }

  // Updates an existing category using the repository method and returns the result.
  Future<DataState<bool>> update(CategoryEntity categoryEntity) {
    return _categoryRepository.update(categoryEntity);
  }

  // Fetches a list of all categories from the repository and returns the result.
  Future<DataState<List<CategoryEntity>>> getCategories() {
    return _categoryRepository.getList();
  }

  // Deletes a category by ID using the repository method and returns the result.
  Future<DataState<bool>> delete(int id) {
    return _categoryRepository.delete(id);
  }

  // Fetches a predefined list of categories for POS usage (e.g., "All", "Orders")
  // and adds the categories fetched from the repository.
  Future<DataState<List<CategoryEntity>>> getPosCategories() async {
    try {
      // Predefined categories that are always included in POS context
      List<CategoryEntity> categories = [
        const CategoryEntity(id: 0, name: 'All'),
        const CategoryEntity(id: -1, name: 'Orders'),
      ];

      // Fetching the categories from the repository
      final DataState<List<CategoryEntity>> result =
          await _categoryRepository.getList();

      // If the fetch was successful, append the categories from the repository
      if (result.isSuccess) {
        categories.addAll(result.data!);
      }

      // Return the final list of categories including predefined ones
      return DataState.success(categories);
    } catch (e, stackTrace) {
      // Log any errors and return an error state with a message
      Log.error(e.toString(), stackTrace: stackTrace);
      return DataState.error('Error fetching category list.');
    }
  }
}
