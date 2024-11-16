import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/category/category_entity.dart';

abstract class CategoryRepository {
  Future<DataState<bool>> saveCategory(
      {required CategoryEntity categoryEntity});

  Future<DataState<List<CategoryEntity>>> getCategories();

  Future<DataState<CategoryEntity>> getCategoryById({required int id});
}
