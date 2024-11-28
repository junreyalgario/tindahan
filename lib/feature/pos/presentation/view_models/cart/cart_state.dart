// ignore_for_file: invalid_annotation_target

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_order/pos_order_entity.dart';

part 'cart_state.freezed.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    @Default({}) Map<String, PosOrderEntity> posItems,
    @Default(0) double totalqty,
    @Default(0) double grandTotalAmount,
  }) = _CartState;
}
