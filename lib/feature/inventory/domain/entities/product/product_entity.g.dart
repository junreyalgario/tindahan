// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductEntityImpl _$$ProductEntityImplFromJson(Map<String, dynamic> json) =>
    _$ProductEntityImpl(
      id: (json['id'] as num?)?.toInt() ?? null,
      photo: json['photo'] as String? ?? null,
      category: json['category'] == null
          ? null
          : CategoryEntity.fromJson(json['category'] as Map<String, dynamic>),
      name: json['name'] as String? ?? null,
      uom: json['uom'] == null
          ? null
          : UomEntity.fromJson(json['uom'] as Map<String, dynamic>),
      price: (json['price'] as num?)?.toDouble() ?? null,
      lowStockLevel: (json['lowStockLevel'] as num?)?.toDouble() ?? null,
      inventoryList: (json['inventoryList'] as List<dynamic>?)
              ?.map((e) => InventoryEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ProductEntityImplToJson(_$ProductEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'photo': instance.photo,
      'category': instance.category,
      'name': instance.name,
      'uom': instance.uom,
      'price': instance.price,
      'lowStockLevel': instance.lowStockLevel,
      'inventoryList': instance.inventoryList,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
