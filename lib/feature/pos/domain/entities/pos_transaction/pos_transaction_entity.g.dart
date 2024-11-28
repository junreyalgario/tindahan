// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pos_transaction_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PosTransactionEntityImpl _$$PosTransactionEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PosTransactionEntityImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      orders: (json['orders'] as List<dynamic>?)
              ?.map((e) => PosOrderEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalQuantity: (json['totalQuantity'] as num?)?.toDouble() ?? 0,
      totalAmount: (json['totalAmount'] as num?)?.toDouble() ?? 0,
      vat: (json['vat'] as num?)?.toDouble() ?? 0,
      payable: (json['payable'] as num?)?.toDouble() ?? 0,
      amountReceived: (json['amountReceived'] as num?)?.toDouble() ?? 0,
      change: (json['change'] as num?)?.toDouble() ?? 0,
      status:
          $enumDecodeNullable(_$PosTransactionStatusEnumMap, json['status']) ??
              PosTransactionStatus.pending,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$PosTransactionEntityImplToJson(
        _$PosTransactionEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orders': instance.orders,
      'totalQuantity': instance.totalQuantity,
      'totalAmount': instance.totalAmount,
      'vat': instance.vat,
      'payable': instance.payable,
      'amountReceived': instance.amountReceived,
      'change': instance.change,
      'status': _$PosTransactionStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

const _$PosTransactionStatusEnumMap = {
  PosTransactionStatus.pending: 'pending',
  PosTransactionStatus.completed: 'completed',
};
