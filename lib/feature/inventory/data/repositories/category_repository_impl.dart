import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/category_dao.dart';
import 'package:tienda_pos/feature/inventory/data/models/category/category.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/category/category_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/repositories/category_repository.dart';

class CategoryRepositoryImpl extends CategoryRepository {
  final CategoryDao _categoryDao;

  CategoryRepositoryImpl({required CategoryDao categoryDao})
      : _categoryDao = categoryDao;

  @override
  Future<DataState<List<CategoryEntity>>> getCategories() async {
    List<Category> categories = _categoryDao.getAll();
    return DataState.success([
      const CategoryEntity(name: 'Dairy'),
      const CategoryEntity(name: 'Grains'),
      const CategoryEntity(name: 'Condiments'),
    ]);
  }

  @override
  Future<DataState<CategoryEntity>> getCategoryById({required int id}) {
    // TODO: implement getCategoryById
    throw UnimplementedError();
  }

  @override
  Future<DataState<bool>> saveCategory({
    required CategoryEntity categoryEntity,
  }) async {
    try {
      final Category category = Category(
        categoryEntity.id!,
        categoryEntity.name!,
        categoryEntity.createdAt!,
        categoryEntity.updatedAt!,
      );
      _categoryDao.save(category);
      return DataState.success(true);
    } catch (e) {
      log(e.toString());
      return DataState.error(e.toString());
    }
  }
}
