import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_order/pos_order_entity.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_transaction/pos_transaction_entity.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_transaction/pos_transaction_status.dart';
import 'package:tienda_pos/feature/pos/domain/usecases/pos_transaction_usecase.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/cart/cart_notifier.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/cart/cart_state.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/payment/payment_state.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/pos/pos_notifier.dart';
import 'package:tienda_pos/feature/pos/providers/pos_transaction_providers.dart';

class PaymentNotifier extends StateNotifier<PaymentState> {
  final CartState _cartState;
  final PosNotifier _posNotifier;
  final PosTransactionUsecase _posTransactionUsecase;

  PaymentNotifier({
    required CartState cartState,
    required PosNotifier posNotifier,
    required PosTransactionUsecase posTransactionUsecase,
  })  : _cartState = cartState,
        _posNotifier = posNotifier,
        _posTransactionUsecase = posTransactionUsecase,
        super(const PaymentState());

  Future<DataState<double>> processPayment(double amountReceived) async {
    double change = amountReceived - _cartState.grandTotalAmount;

    final bool status =
        await _saveTransaction(amountReceived: amountReceived, change: change);
    if (status) {
      _posNotifier.transactionCompleted();
      return DataState.success(change);
    }

    return DataState.error('Failed processing payment.');
  }

  Future<bool> _saveTransaction({
    required double amountReceived,
    required double change,
  }) async {
    List<PosOrderEntity> orders = _cartState.posItems.values.toList();
    PosTransactionEntity posTransaction = PosTransactionEntity(
      orders: orders,
      totalQuantity: _cartState.totalqty,
      totalAmount: _cartState.grandTotalAmount,
      payable: _cartState.grandTotalAmount,
      amountReceived: amountReceived,
      change: change,
      status: PosTransactionStatus.completed,
    );

    DataState<bool> result = await _posTransactionUsecase.save(posTransaction);

    return result.isSuccess;
  }
}

final paymentNotifierProvider =
    StateNotifierProvider.autoDispose<PaymentNotifier, PaymentState>((ref) {
  return PaymentNotifier(
    cartState: ref.read(cartNotifierProvider),
    posNotifier: ref.read(posNotifierProvider.notifier),
    posTransactionUsecase: ref.read(posTransactionUsecaseProvider),
  );
});
