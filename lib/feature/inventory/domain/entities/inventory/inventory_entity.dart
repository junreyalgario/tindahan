// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../product/product_entity.dart';

part 'inventory_entity.freezed.dart';
part 'inventory_entity.g.dart';

@freezed
class InventoryEntity with _$InventoryEntity {
  const factory InventoryEntity({
    @Default(null) int? id,
    @Default(null) ProductEntity? productEntity,
    @Default(null) double? cost,
    @Default(null) double? stocks,
    @Default(null) DateTime? createdAt,
    @Default(null) DateTime? updatedAt,
  }) = _InventoryEntity;

  factory InventoryEntity.fromJson(Map<String, dynamic> json) =>
      _$InventoryEntityFromJson(json);
}
