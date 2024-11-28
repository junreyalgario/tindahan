// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pos_order_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PosOrderEntity _$PosOrderEntityFromJson(Map<String, dynamic> json) {
  return _PosOrderEntity.fromJson(json);
}

/// @nodoc
mixin _$PosOrderEntity {
  int get id => throw _privateConstructorUsedError;
  ProductEntity get product => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  PosTransactionEntity? get transaction => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this PosOrderEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PosOrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PosOrderEntityCopyWith<PosOrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosOrderEntityCopyWith<$Res> {
  factory $PosOrderEntityCopyWith(
          PosOrderEntity value, $Res Function(PosOrderEntity) then) =
      _$PosOrderEntityCopyWithImpl<$Res, PosOrderEntity>;
  @useResult
  $Res call(
      {int id,
      ProductEntity product,
      double price,
      double quantity,
      double amount,
      PosTransactionEntity? transaction,
      DateTime? createdAt,
      DateTime? updatedAt});

  $ProductEntityCopyWith<$Res> get product;
  $PosTransactionEntityCopyWith<$Res>? get transaction;
}

/// @nodoc
class _$PosOrderEntityCopyWithImpl<$Res, $Val extends PosOrderEntity>
    implements $PosOrderEntityCopyWith<$Res> {
  _$PosOrderEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PosOrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? product = null,
    Object? price = null,
    Object? quantity = null,
    Object? amount = null,
    Object? transaction = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as PosTransactionEntity?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of PosOrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductEntityCopyWith<$Res> get product {
    return $ProductEntityCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  /// Create a copy of PosOrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PosTransactionEntityCopyWith<$Res>? get transaction {
    if (_value.transaction == null) {
      return null;
    }

    return $PosTransactionEntityCopyWith<$Res>(_value.transaction!, (value) {
      return _then(_value.copyWith(transaction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PosOrderEntityImplCopyWith<$Res>
    implements $PosOrderEntityCopyWith<$Res> {
  factory _$$PosOrderEntityImplCopyWith(_$PosOrderEntityImpl value,
          $Res Function(_$PosOrderEntityImpl) then) =
      __$$PosOrderEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      ProductEntity product,
      double price,
      double quantity,
      double amount,
      PosTransactionEntity? transaction,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $ProductEntityCopyWith<$Res> get product;
  @override
  $PosTransactionEntityCopyWith<$Res>? get transaction;
}

/// @nodoc
class __$$PosOrderEntityImplCopyWithImpl<$Res>
    extends _$PosOrderEntityCopyWithImpl<$Res, _$PosOrderEntityImpl>
    implements _$$PosOrderEntityImplCopyWith<$Res> {
  __$$PosOrderEntityImplCopyWithImpl(
      _$PosOrderEntityImpl _value, $Res Function(_$PosOrderEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PosOrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? product = null,
    Object? price = null,
    Object? quantity = null,
    Object? amount = null,
    Object? transaction = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$PosOrderEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as PosTransactionEntity?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PosOrderEntityImpl implements _PosOrderEntity {
  const _$PosOrderEntityImpl(
      {this.id = 0,
      this.product = const ProductEntity(),
      this.price = 0,
      this.quantity = 0,
      this.amount = 0,
      this.transaction = null,
      this.createdAt = null,
      this.updatedAt = null});

  factory _$PosOrderEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PosOrderEntityImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final ProductEntity product;
  @override
  @JsonKey()
  final double price;
  @override
  @JsonKey()
  final double quantity;
  @override
  @JsonKey()
  final double amount;
  @override
  @JsonKey()
  final PosTransactionEntity? transaction;
  @override
  @JsonKey()
  final DateTime? createdAt;
  @override
  @JsonKey()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'PosOrderEntity(id: $id, product: $product, price: $price, quantity: $quantity, amount: $amount, transaction: $transaction, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PosOrderEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, product, price, quantity,
      amount, transaction, createdAt, updatedAt);

  /// Create a copy of PosOrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PosOrderEntityImplCopyWith<_$PosOrderEntityImpl> get copyWith =>
      __$$PosOrderEntityImplCopyWithImpl<_$PosOrderEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PosOrderEntityImplToJson(
      this,
    );
  }
}

abstract class _PosOrderEntity implements PosOrderEntity {
  const factory _PosOrderEntity(
      {final int id,
      final ProductEntity product,
      final double price,
      final double quantity,
      final double amount,
      final PosTransactionEntity? transaction,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$PosOrderEntityImpl;

  factory _PosOrderEntity.fromJson(Map<String, dynamic> json) =
      _$PosOrderEntityImpl.fromJson;

  @override
  int get id;
  @override
  ProductEntity get product;
  @override
  double get price;
  @override
  double get quantity;
  @override
  double get amount;
  @override
  PosTransactionEntity? get transaction;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of PosOrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PosOrderEntityImplCopyWith<_$PosOrderEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
