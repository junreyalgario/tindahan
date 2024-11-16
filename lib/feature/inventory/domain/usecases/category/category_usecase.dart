import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/feature/inventory/domain/repositories/category_repository.dart';

import '../../entities/category/category_entity.dart';

class CategoryUsecase {
  CategoryUsecase({required CategoryRepository categoryRepository})
      : _categoryRepository = categoryRepository;

  final CategoryRepository _categoryRepository;

  Future<DataState<bool>> save({required CategoryEntity categoryEntity}) {
    return _categoryRepository.saveCategory(categoryEntity: categoryEntity);
  }
}
