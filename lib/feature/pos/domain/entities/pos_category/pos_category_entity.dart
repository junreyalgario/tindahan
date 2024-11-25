// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/category/category_entity.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_item/pos_item_entity.dart';

part 'pos_category_entity.freezed.dart';

@freezed
class PosCategoryEntity with _$PosCategoryEntity {
  const factory PosCategoryEntity({
    @Default(null) CategoryEntity? category,
    @Default(null) List<PosItemEntity>? items,
  }) = _PosCategoryEntity;
}
