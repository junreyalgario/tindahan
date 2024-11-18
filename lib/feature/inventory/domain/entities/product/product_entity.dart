// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../category/category_entity.dart';

part 'product_entity.freezed.dart';
part 'product_entity.g.dart';

@freezed
class ProductEntity with _$ProductEntity {
  const factory ProductEntity({
    @Default(null) int? id,
    @Default(null) CategoryEntity? category,
    @Default(null) String? photo,
    @Default(null) String? name,
    @Default(null) double? price,
    @Default(null) double? cost,
    @Default(null) DateTime? createdAt,
    @Default(null) DateTime? updatedAt,
  }) = _ProductEntity;

  factory ProductEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductEntityFromJson(json);
}
