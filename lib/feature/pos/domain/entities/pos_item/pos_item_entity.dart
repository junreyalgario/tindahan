// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/product/product_entity.dart';

part 'pos_item_entity.freezed.dart';

@freezed
class PosItemEntity with _$PosItemEntity {
  const factory PosItemEntity({
    @Default(null) ProductEntity? product,
    @Default(0) double orderCount,
    @Default(0) double subTotalAmount,
  }) = _PosItemEntity;
}
