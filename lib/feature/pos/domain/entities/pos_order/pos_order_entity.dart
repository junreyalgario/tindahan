// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/product/product_entity.dart';

part 'pos_order_entity.freezed.dart';

@freezed
class PosOrderEntity with _$PosOrderEntity {
  const factory PosOrderEntity({
    @Default(0) int id,
    @Default(ProductEntity()) ProductEntity product,
    @Default(0) double price,
    @Default(0) double quantity,
    @Default(0) double amount,
    @Default(null) DateTime? createdAt,
    @Default(null) DateTime? updatedAt,
  }) = _PosOrderEntity;
}
