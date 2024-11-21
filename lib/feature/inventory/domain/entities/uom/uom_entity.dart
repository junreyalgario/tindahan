// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'uom_entity.freezed.dart';
part 'uom_entity.g.dart';

@freezed
class UomEntity with _$UomEntity {
  const factory UomEntity({
    @Default(null) int? id,
    @Default(null) String? name,
    @Default(null) String? symbol,
    @Default(null) String? uom,
    @Default(null) DateTime? createdAt,
    @Default(null) DateTime? updatedAt,
  }) = _UomEntity;

  factory UomEntity.fromJson(Map<String, dynamic> json) =>
      _$UomEntityFromJson(json);
}
