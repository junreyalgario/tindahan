// ignore_for_file: invalid_annotation_target

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_order/pos_order_entity.dart';

part 'pos_state.freezed.dart';

@freezed
class PosState with _$PosState {
  const factory PosState({
    @Default([]) List<PosOrderEntity> allItems,
    @Default([]) List<PosOrderEntity> items,
    @Default([]) List<PosOrderEntity> originalItems,
  }) = _PosState;
}
