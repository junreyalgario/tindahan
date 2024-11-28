import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_transaction/pos_transaction_entity.dart';
import 'package:tienda_pos/feature/pos/domain/repositories/pos_transaction_repository.dart';
import 'package:tienda_pos/feature/pos/domain/usecases/pos_order_usecase.dart';

class PosTransactionUsecase {
  final PosTransactionRepository _posTransactionRepository;
  final PosOrderUsecase _posOrderUsecase;

  PosTransactionUsecase(
      {required PosTransactionRepository posTransactionRepository,
      required PosOrderUsecase posOrderUsecase})
      : _posTransactionRepository = posTransactionRepository,
        _posOrderUsecase = posOrderUsecase;

  Future<DataState<bool>> save(PosTransactionEntity posTransaction) async {
    _posTransactionRepository.insert(posTransaction);
    _posOrderUsecase.saveAll([]);
    return DataState.success(true);
  }
}
