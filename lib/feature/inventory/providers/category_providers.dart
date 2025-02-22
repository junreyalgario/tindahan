import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/category_dao.dart';
import 'package:tienda_pos/feature/inventory/data/repositories/category_repository_impl.dart';
import 'package:tienda_pos/feature/inventory/domain/repositories/category_repository.dart';
import 'package:tienda_pos/feature/inventory/domain/usecases/category_usecase.dart';

// Provides an instance of CategoryRepositoryImpl for dependency injection (DI).
final categoryRepositoryProvider = Provider<CategoryRepository>((ref) {
  // Reading the CategoryDao provider to pass it into the repository
  final categoryDao = ref.read(categoryDaoProvider);
  // Returning the instance of CategoryRepositoryImpl with the categoryDao dependency
  return CategoryRepositoryImpl(categoryDao: categoryDao);
});

// Provides an instance of CategoryUsecase for dependency injection (DI).
final categoryUseCaseProvider = Provider<CategoryUsecase>((ref) {
  // Returning the instance of CategoryUsecase with the categoryRepository dependency
  return CategoryUsecase(
    categoryRepository: ref.read(categoryRepositoryProvider),
  );
});
