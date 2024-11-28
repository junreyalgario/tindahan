import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_order/pos_order_entity.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_transaction/pos_transaction_entity.dart';
import 'package:tienda_pos/feature/pos/domain/repositories/pos_transaction_repository.dart';

class PosTransactionUsecase {
  final PosTransactionRepository _posTransactionRepository;

  PosTransactionUsecase(
      {required PosTransactionRepository posTransactionRepository})
      : _posTransactionRepository = posTransactionRepository;

  Future<DataState<bool>> save(PosTransactionEntity posTransaction) async {
    posTransaction = posTransaction.copyWith(
        orders: posTransaction.orders.map((PosOrderEntity order) {
      if (order.price == 0) {
        order = order.copyWith(price: order.product.price!);
      }
      return order;
    }).toList());
    return _posTransactionRepository.insert(posTransaction);
  }
}
