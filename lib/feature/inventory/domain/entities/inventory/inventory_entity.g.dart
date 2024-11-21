// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InventoryEntityImpl _$$InventoryEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$InventoryEntityImpl(
      id: (json['id'] as num?)?.toInt() ?? null,
      productEntity: json['productEntity'] == null
          ? null
          : ProductEntity.fromJson(
              json['productEntity'] as Map<String, dynamic>),
      cost: (json['cost'] as num?)?.toDouble() ?? null,
      stocks: (json['stocks'] as num?)?.toDouble() ?? null,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$InventoryEntityImplToJson(
        _$InventoryEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productEntity': instance.productEntity,
      'cost': instance.cost,
      'stocks': instance.stocks,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
