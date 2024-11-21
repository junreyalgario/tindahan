// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uom_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UomEntityImpl _$$UomEntityImplFromJson(Map<String, dynamic> json) =>
    _$UomEntityImpl(
      id: (json['id'] as num?)?.toInt() ?? null,
      name: json['name'] as String? ?? null,
      symbol: json['symbol'] as String? ?? null,
      uom: json['uom'] as String? ?? null,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$UomEntityImplToJson(_$UomEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'symbol': instance.symbol,
      'uom': instance.uom,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
