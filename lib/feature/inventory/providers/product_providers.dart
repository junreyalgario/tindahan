import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/category_dao.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/inventory_dao.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/product_dao.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/uom_dao.dart';
import 'package:tienda_pos/feature/inventory/data/repositories/product_repository_impl.dart';
import 'package:tienda_pos/feature/inventory/domain/usecases/product_usecase.dart';

final productRepositoryImplProvider = Provider<ProductRepositoryImpl>((ref) {
  return ProductRepositoryImpl(
    productDao: ref.read(productDaoProvider),
    inventoryDao: ref.read(inventoryDaoProvider),
    categoryDao: ref.read(categoryDaoProvider),
    uomDao: ref.read(uomDaoProvider),
  );
});

final productUsecaseProvider = Provider<ProductUsecase>((ref) {
  return ProductUsecase(
    productRepository: ref.read(productRepositoryImplProvider),
  );
});
