import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/feature/inventory/providers/product_providers.dart';
import 'package:tienda_pos/feature/pos/domain/usecases/pos_usecase.dart';

// Provides an instance of PosUsecase for dependency injection (DI).
final posUsecaseProvider = Provider<PosUsecase>((ref) {
  // Reading the ProductRepositoryImpl provider to pass it into the PosUsecase
  return PosUsecase(productRepository: ref.read(productRepositoryProvider));
});
