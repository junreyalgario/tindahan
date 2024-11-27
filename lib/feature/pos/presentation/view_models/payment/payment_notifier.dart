import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/utils/logger.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/cart/cart_notifier.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/cart/cart_state.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/payment/payment_state.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/pos/pos_notifier.dart';

class PaymentNotifier extends StateNotifier<PaymentState> {
  final CartState _cartState;
  final PosNotifier _posNotifier;

  PaymentNotifier(
      {required CartState cartState, required PosNotifier posNotifier})
      : _cartState = cartState,
        _posNotifier = posNotifier,
        super(const PaymentState());

  double processPayment(double amountReceived) {
    state = state.copyWith(amountReceived: amountReceived);

    _posNotifier.transactionCompleted();
    return amountReceived - _cartState.grandTotalAmount;
  }
}

final paymentNotifierProvider =
    StateNotifierProvider.autoDispose<PaymentNotifier, PaymentState>((ref) {
  return PaymentNotifier(
      cartState: ref.read(cartNotifierProvider),
      posNotifier: ref.read(posNotifierProvider.notifier));
});
