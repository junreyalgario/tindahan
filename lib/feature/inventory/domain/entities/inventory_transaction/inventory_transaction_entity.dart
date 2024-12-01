// ignore_for_file: invalid_annotation_target, constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/inventory/inventory_entity.dart';

part 'inventory_transaction_entity.freezed.dart';
part 'inventory_transaction_entity.g.dart';

@freezed
class InventoryTransactionEntity with _$InventoryTransactionEntity {
  const factory InventoryTransactionEntity({
    @Default(null) int? id,
    @Default(-1) int trsansactionType,
    @Default(0) double quantity,
    @Default(0) double costPerUnit,
    @Default(null) DateTime? trsansactionDate,
    @Default(null) String? vendorName,
    @Default(null) InventoryEntity? inventory,
  }) = _InventoryTransactionEntity;

  factory InventoryTransactionEntity.fromJson(Map<String, dynamic> json) =>
      _$InventoryTransactionEntityFromJson(json);
}

enum InventoryTransactionType {
  unknown(-1),
  restock(0),
  sale(1),
  adjustment(2),
  consume(3),
  bad_order(4);

  final int value;
  const InventoryTransactionType(this.value);

  static final Map<int, InventoryTransactionType> _map = {
    for (var type in InventoryTransactionType.values) type.value: type
  };

  static InventoryTransactionType? fromValue(int value) {
    return _map[value] ?? InventoryTransactionType.unknown;
  }
}
