import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/category_dao.dart';
import 'package:tienda_pos/feature/inventory/data/repositories/category_repository_impl.dart';
import 'package:tienda_pos/feature/inventory/domain/repositories/category_repository.dart';
import 'package:tienda_pos/feature/inventory/domain/usecases/category/category_usecase.dart';

// Provides an instance of CategoryRepositoryImpl for DI.
final categoryRepositoryImplProvider = Provider<CategoryRepository>((ref) {
  final categoryDao = ref.read(categoryDaoProvider);
  return CategoryRepositoryImpl(categoryDao: categoryDao);
});

// Provides an instance of CategoryUsecase for DI.
final categoryUseCaseProvider = Provider<CategoryUsecase>((ref) {
  final categoryRepositoryProvider = ref.read(categoryRepositoryImplProvider);
  return CategoryUsecase(categoryRepository: categoryRepositoryProvider);
});
