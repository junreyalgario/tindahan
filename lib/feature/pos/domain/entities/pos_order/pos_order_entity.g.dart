// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pos_order_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PosOrderEntityImpl _$$PosOrderEntityImplFromJson(Map<String, dynamic> json) =>
    _$PosOrderEntityImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      product: json['product'] == null
          ? const ProductEntity()
          : ProductEntity.fromJson(json['product'] as Map<String, dynamic>),
      price: (json['price'] as num?)?.toDouble() ?? 0,
      quantity: (json['quantity'] as num?)?.toDouble() ?? 0,
      amount: (json['amount'] as num?)?.toDouble() ?? 0,
      transaction: json['transaction'] == null
          ? null
          : PosTransactionEntity.fromJson(
              json['transaction'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$PosOrderEntityImplToJson(
        _$PosOrderEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product': instance.product,
      'price': instance.price,
      'quantity': instance.quantity,
      'amount': instance.amount,
      'transaction': instance.transaction,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
