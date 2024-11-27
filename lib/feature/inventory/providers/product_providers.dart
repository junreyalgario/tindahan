import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/category_dao.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/inventory_dao.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/product_dao.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/uom_dao.dart';
import 'package:tienda_pos/feature/inventory/data/repositories/product_repository_impl.dart';
import 'package:tienda_pos/feature/inventory/domain/usecases/product_usecase.dart';

// Provider for creating an instance of ProductRepositoryImpl
final productRepositoryImplProvider = Provider<ProductRepositoryImpl>((ref) {
  return ProductRepositoryImpl(
    // Injecting DAOs (Data Access Objects) into the repository
    productDao: ref.read(productDaoProvider),
    inventoryDao: ref.read(inventoryDaoProvider),
    categoryDao: ref.read(categoryDaoProvider),
    uomDao: ref.read(uomDaoProvider),
  );
});

// Provider for creating an instance of ProductUsecase, which interacts with the repository
final productUsecaseProvider = Provider<ProductUsecase>((ref) {
  return ProductUsecase(
    // Injecting ProductRepositoryImpl into the usecase
    productRepository: ref.read(productRepositoryImplProvider),
  );
});
