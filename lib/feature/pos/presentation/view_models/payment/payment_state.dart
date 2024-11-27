// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_state.freezed.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState({
    @Default(0) double amountPayable,
    @Default(0) double amountReceived,
    @Default(0) double change,
  }) = _PaymentState;
}
