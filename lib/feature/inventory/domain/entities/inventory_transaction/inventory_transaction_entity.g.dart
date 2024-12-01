// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_transaction_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InventoryTransactionEntityImpl _$$InventoryTransactionEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$InventoryTransactionEntityImpl(
      id: (json['id'] as num?)?.toInt() ?? null,
      trsansactionType: (json['trsansactionType'] as num?)?.toInt() ?? -1,
      quantity: (json['quantity'] as num?)?.toDouble() ?? 0,
      costPerUnit: (json['costPerUnit'] as num?)?.toDouble() ?? 0,
      trsansactionDate: json['trsansactionDate'] == null
          ? null
          : DateTime.parse(json['trsansactionDate'] as String),
      vendorName: json['vendorName'] as String? ?? null,
      inventory: json['inventory'] == null
          ? null
          : InventoryEntity.fromJson(json['inventory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InventoryTransactionEntityImplToJson(
        _$InventoryTransactionEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'trsansactionType': instance.trsansactionType,
      'quantity': instance.quantity,
      'costPerUnit': instance.costPerUnit,
      'trsansactionDate': instance.trsansactionDate?.toIso8601String(),
      'vendorName': instance.vendorName,
      'inventory': instance.inventory,
    };
