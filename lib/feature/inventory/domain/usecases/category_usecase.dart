import 'package:tienda_pos/core/state/data_state.dart';
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

  Future<DataState<List<CategoryEntity>>> getCategories() async {
    return _categoryRepository.getList();
  }

  Future<DataState<bool>> delete(int id) {
    return _categoryRepository.delete(id);
  }
}
