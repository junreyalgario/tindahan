import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/feature/inventory/providers/product_providers.dart';
import 'package:tienda_pos/feature/pos/domain/usecases/pos_usecase.dart';

final posUsecaseProvider = Provider<PosUsecase>((ref) {
  return PosUsecase(productRepository: ref.read(productRepositoryImplProvider));
});
