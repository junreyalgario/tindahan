// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductEntityImpl _$$ProductEntityImplFromJson(Map<String, dynamic> json) =>
    _$ProductEntityImpl(
      id: (json['id'] as num?)?.toInt() ?? null,
      category: json['category'] == null
          ? const CategoryEntity()
          : CategoryEntity.fromJson(json['category'] as Map<String, dynamic>),
      photo: json['photo'] as String? ?? null,
      name: json['name'] as String? ?? null,
      price: (json['price'] as num?)?.toDouble() ?? null,
      cost: (json['cost'] as num?)?.toDouble() ?? null,
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
      'category': instance.category,
      'photo': instance.photo,
      'name': instance.name,
      'price': instance.price,
      'cost': instance.cost,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
