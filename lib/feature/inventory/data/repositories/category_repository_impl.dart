import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/category/category_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/repositories/category_repository.dart';

class CategoryRepositoryImpl extends CategoryRepository {
  @override
  Future<DataState<List<CategoryEntity>>> getCategories() {
    // TODO: implement getCategories
    throw UnimplementedError();
  }

  @override
  Future<DataState<CategoryEntity>> getCategoryById({required int id}) {
    // TODO: implement getCategoryById
    throw UnimplementedError();
  }

  @override
  Future<DataState<bool>> saveCategory(
      {required CategoryEntity categoryEntity}) async {
    return DataState.success(true);
  }
}
