import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/utils/logger.dart';
import 'package:tienda_pos/feature/pos/domain/usecases/pos_order_usecase.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/cart/cart_notifier.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/cart/cart_state.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/payment/payment_state.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/pos/pos_notifier.dart';
import 'package:tienda_pos/feature/pos/providers/pos_order_providers.dart';

class PaymentNotifier extends StateNotifier<PaymentState> {
  final CartState _cartState;
  final PosNotifier _posNotifier;
  final PosOrderUsecase _posOrderUsecase;

  PaymentNotifier({
    required CartState cartState,
    required PosNotifier posNotifier,
    required PosOrderUsecase posOrderUsecase,
  })  : _cartState = cartState,
        _posNotifier = posNotifier,
        _posOrderUsecase = posOrderUsecase,
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
    posNotifier: ref.read(posNotifierProvider.notifier),
    posOrderUsecase: ref.read(posOrderUsecaseProvider),
  );
});
