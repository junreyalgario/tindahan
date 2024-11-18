import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/category/category_entity.dart';

abstract class CategoryRepository {
  Future<DataState<bool>> insert(CategoryEntity categoryEntity);

  Future<DataState<bool>> update(CategoryEntity categoryEntity);

  Future<DataState<bool>> delete(int id);

  Future<DataState<List<CategoryEntity>>> getCategories();

  Future<DataState<CategoryEntity>> getCategoryById(int id);
}
