// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InventoryEntityImpl _$$InventoryEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$InventoryEntityImpl(
      id: (json['id'] as num?)?.toInt() ?? null,
      currentCost: (json['currentCost'] as num?)?.toDouble() ?? 0,
      wac: (json['wac'] as num?)?.toDouble() ?? 0,
      stockLevel: (json['stockLevel'] as num?)?.toDouble() ?? 0,
      reorderLevel: (json['reorderLevel'] as num?)?.toDouble() ?? 0,
      lastStockUpdate: json['lastStockUpdate'] == null
          ? null
          : DateTime.parse(json['lastStockUpdate'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      productEntity: json['productEntity'] == null
          ? null
          : ProductEntity.fromJson(
              json['productEntity'] as Map<String, dynamic>),
      transactions: (json['transactions'] as List<dynamic>?)
              ?.map((e) => InventoryTransactionEntity.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$InventoryEntityImplToJson(
        _$InventoryEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'currentCost': instance.currentCost,
      'wac': instance.wac,
      'stockLevel': instance.stockLevel,
      'reorderLevel': instance.reorderLevel,
      'lastStockUpdate': instance.lastStockUpdate?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'productEntity': instance.productEntity,
      'transactions': instance.transactions,
    };
