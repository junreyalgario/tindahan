import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/feature/pos/data/repositories/pos_transaction_repository_impl.dart';
import 'package:tienda_pos/feature/pos/domain/usecases/pos_transaction_usecase.dart';
import 'package:tienda_pos/feature/pos/providers/pos_order_providers.dart';

final posTransactionRepositoryImplProvider =
    Provider<PosTransactionRepositoryImpl>((ref) {
  return PosTransactionRepositoryImpl();
});

final posTransactionUsecaseProvider = Provider<PosTransactionUsecase>((ref) {
  return PosTransactionUsecase(
    posOrderUsecase: ref.read(posOrderUsecaseProvider),
    posTransactionRepository: ref.read(posTransactionRepositoryImplProvider),
  );
});
