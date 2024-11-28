// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_order/pos_order_entity.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_transaction/pos_transaction_status.dart';

part 'pos_transaction_entity.freezed.dart';

@freezed
class PosTransactionEntity with _$PosTransactionEntity {
  const factory PosTransactionEntity({
    @Default(0) int id,
    @Default([]) List<PosOrderEntity> orders,
    @Default(0) double totalQuantity,
    @Default(0) double totalAmount,
    @Default(0) double amountReceived,
    @Default(0) double payable,
    @Default(0) double change,
    @Default(PosTransactionStatus.pending) PosTransactionStatus status,
    @Default(null) DateTime? createdAt,
    @Default(null) DateTime? updatedAt,
  }) = _PosTransactionEntity;
}
