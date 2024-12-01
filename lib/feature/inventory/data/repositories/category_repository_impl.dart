import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/core/utils/logger.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/category_dao.dart';
import 'package:tienda_pos/feature/inventory/data/models/category/category.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/category/category_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/repositories/category_repository.dart';

class CategoryRepositoryImpl extends CategoryRepository {
  final CategoryDao _categoryDao;

  CategoryRepositoryImpl({required CategoryDao categoryDao})
      : _categoryDao = categoryDao;

  @override
  Future<DataState<bool>> insert(CategoryEntity entity) async {
    try {
      entity = entity.copyWith(
        id: _categoryDao.getNextId(),
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

      _categoryDao.save($Category.fromJson(entity.toJson()));

      return DataState.success(true);
    } catch (e, stackTrace) {
      Log.error(e.toString(), stackTrace: stackTrace);
      return DataState.error(e.toString());
    }
  }

  @override
  Future<DataState<bool>> update(CategoryEntity entity) async {
    try {
      final Category category = Category(
        entity.id!,
        entity.name!,
        entity.createdAt!,
        DateTime.now(),
      );

      _categoryDao.update(category);

      return DataState.success(true);
    } catch (e, stackTrace) {
      Log.error(e.toString(), stackTrace: stackTrace);
      return DataState.error(e.toString());
    }
  }

  @override
  Future<DataState<bool>> delete(int id) async {
    try {
      _categoryDao.delete(id);
      return DataState.success(true);
    } catch (e, stackTrace) {
      Log.error(e.toString(), stackTrace: stackTrace);
      return DataState.error(e.toString());
    }
  }

  @override
  Future<DataState<List<CategoryEntity>>> getList() async {
    try {
      List<CategoryEntity> categoryEntities = [];

      for (Category categoryModel in _categoryDao.getAll()) {
        categoryEntities.add(CategoryEntity.fromJson(categoryModel.toJson()));
      }

      return DataState.success(
          categoryEntities..sort((a, b) => a.name!.compareTo(b.name!)));
    } catch (e, stackTrace) {
      Log.error(e.toString(), stackTrace: stackTrace);
      return DataState.error(e.toString());
    }
  }

  @override
  Future<DataState<CategoryEntity>> getById(int id) async {
    try {
      final Category? category = _categoryDao.getById(id);

      if (category == null) {
        return DataState.error('Category not found.');
      }

      return DataState.success(const CategoryEntity());
    } catch (e, stackTrace) {
      Log.error(e.toString(), stackTrace: stackTrace);
      return DataState.error(e.toString());
    }
  }
}
