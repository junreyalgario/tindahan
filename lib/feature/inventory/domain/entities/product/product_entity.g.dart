// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductEntityImpl _$$ProductEntityImplFromJson(Map<String, dynamic> json) =>
    _$ProductEntityImpl(
      id: (json['id'] as num?)?.toInt() ?? null,
      photo: json['photo'] as String? ?? null,
      name: json['name'] as String? ?? null,
      price: (json['price'] as num?)?.toDouble() ?? null,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      category: json['category'] == null
          ? null
          : CategoryEntity.fromJson(json['category'] as Map<String, dynamic>),
      uom: json['uom'] == null
          ? null
          : UomEntity.fromJson(json['uom'] as Map<String, dynamic>),
      inventory: json['inventory'] == null
          ? null
          : InventoryEntity.fromJson(json['inventory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductEntityImplToJson(_$ProductEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'photo': instance.photo,
      'name': instance.name,
      'price': instance.price,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'category': instance.category,
      'uom': instance.uom,
      'inventory': instance.inventory,
    };
