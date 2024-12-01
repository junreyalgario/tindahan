// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/inventory_transaction/inventory_transaction_entity.dart';

import '../product/product_entity.dart';

part 'inventory_entity.freezed.dart';
part 'inventory_entity.g.dart';

@freezed
class InventoryEntity with _$InventoryEntity {
  const factory InventoryEntity({
    @Default(null) int? id,
    @Default(0) double currentCost,
    @Default(0) double wac,
    @Default(0) double stockLevel,
    @Default(0) double reorderLevel,
    @Default(null) DateTime? lastStockUpdate,
    @Default(null) DateTime? createdAt,
    @Default(null) DateTime? updatedAt,
    @Default(null) ProductEntity? productEntity,
    @Default([]) List<InventoryTransactionEntity> transactions,
  }) = _InventoryEntity;

  factory InventoryEntity.fromJson(Map<String, dynamic> json) =>
      _$InventoryEntityFromJson(json);
}
