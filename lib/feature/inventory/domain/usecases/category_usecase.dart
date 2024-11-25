import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/core/utils/logger.dart';
import 'package:tienda_pos/feature/inventory/domain/repositories/category_repository.dart';

import '../entities/category/category_entity.dart';

class CategoryUsecase {
  CategoryUsecase({required CategoryRepository categoryRepository})
      : _categoryRepository = categoryRepository;

  final CategoryRepository _categoryRepository;

  Future<DataState<bool>> insert(CategoryEntity categoryEntity) {
    return _categoryRepository.insert(categoryEntity);
  }

  Future<DataState<bool>> update(CategoryEntity categoryEntity) {
    return _categoryRepository.update(categoryEntity);
  }

  Future<DataState<List<CategoryEntity>>> getCategories() {
    return _categoryRepository.getList();
  }

  Future<DataState<bool>> delete(int id) {
    return _categoryRepository.delete(id);
  }

  Future<DataState<List<CategoryEntity>>> getPosCategories() async {
    try {
      List<CategoryEntity> categories = [
        const CategoryEntity(id: 0, name: 'All'),
        const CategoryEntity(id: -1, name: 'Orders'),
      ];

      final DataState<List<CategoryEntity>> result =
          await _categoryRepository.getList();

      if (result.isSuccess) {
        categories.addAll(result.data!);
      }

      return DataState.success(categories);
    } catch (e, stackTrace) {
      Log.error(e.toString(), stackTrace: stackTrace);
      return DataState.error('Error fetching category list.');
    }
  }
}
