import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/feature/pos/data/repositories/pos_order_repository_impl.dart';
import 'package:tienda_pos/feature/pos/domain/usecases/pos_order_usecase.dart';

final posOrderRepositoryImplProvider = Provider<PosOrderRepositoryImpl>((ref) {
  return PosOrderRepositoryImpl();
});

final posOrderUsecaseProvider = Provider<PosOrderUsecase>((ref) {
  return PosOrderUsecase(
      posOrderRepository: ref.read(posOrderRepositoryImplProvider));
});
