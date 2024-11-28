// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pos_transaction_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PosTransactionEntity _$PosTransactionEntityFromJson(Map<String, dynamic> json) {
  return _PosTransactionEntity.fromJson(json);
}

/// @nodoc
mixin _$PosTransactionEntity {
  int get id => throw _privateConstructorUsedError;
  List<PosOrderEntity> get orders => throw _privateConstructorUsedError;
  double get totalQuantity => throw _privateConstructorUsedError;
  double get totalAmount => throw _privateConstructorUsedError;
  double get vat => throw _privateConstructorUsedError;
  double get payable => throw _privateConstructorUsedError;
  double get amountReceived => throw _privateConstructorUsedError;
  double get change => throw _privateConstructorUsedError;
  PosTransactionStatus get status => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this PosTransactionEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PosTransactionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PosTransactionEntityCopyWith<PosTransactionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosTransactionEntityCopyWith<$Res> {
  factory $PosTransactionEntityCopyWith(PosTransactionEntity value,
          $Res Function(PosTransactionEntity) then) =
      _$PosTransactionEntityCopyWithImpl<$Res, PosTransactionEntity>;
  @useResult
  $Res call(
      {int id,
      List<PosOrderEntity> orders,
      double totalQuantity,
      double totalAmount,
      double vat,
      double payable,
      double amountReceived,
      double change,
      PosTransactionStatus status,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$PosTransactionEntityCopyWithImpl<$Res,
        $Val extends PosTransactionEntity>
    implements $PosTransactionEntityCopyWith<$Res> {
  _$PosTransactionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PosTransactionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orders = null,
    Object? totalQuantity = null,
    Object? totalAmount = null,
    Object? vat = null,
    Object? payable = null,
    Object? amountReceived = null,
    Object? change = null,
    Object? status = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<PosOrderEntity>,
      totalQuantity: null == totalQuantity
          ? _value.totalQuantity
          : totalQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      vat: null == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double,
      payable: null == payable
          ? _value.payable
          : payable // ignore: cast_nullable_to_non_nullable
              as double,
      amountReceived: null == amountReceived
          ? _value.amountReceived
          : amountReceived // ignore: cast_nullable_to_non_nullable
              as double,
      change: null == change
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PosTransactionStatus,
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
}

/// @nodoc
abstract class _$$PosTransactionEntityImplCopyWith<$Res>
    implements $PosTransactionEntityCopyWith<$Res> {
  factory _$$PosTransactionEntityImplCopyWith(_$PosTransactionEntityImpl value,
          $Res Function(_$PosTransactionEntityImpl) then) =
      __$$PosTransactionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      List<PosOrderEntity> orders,
      double totalQuantity,
      double totalAmount,
      double vat,
      double payable,
      double amountReceived,
      double change,
      PosTransactionStatus status,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$PosTransactionEntityImplCopyWithImpl<$Res>
    extends _$PosTransactionEntityCopyWithImpl<$Res, _$PosTransactionEntityImpl>
    implements _$$PosTransactionEntityImplCopyWith<$Res> {
  __$$PosTransactionEntityImplCopyWithImpl(_$PosTransactionEntityImpl _value,
      $Res Function(_$PosTransactionEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PosTransactionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orders = null,
    Object? totalQuantity = null,
    Object? totalAmount = null,
    Object? vat = null,
    Object? payable = null,
    Object? amountReceived = null,
    Object? change = null,
    Object? status = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$PosTransactionEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<PosOrderEntity>,
      totalQuantity: null == totalQuantity
          ? _value.totalQuantity
          : totalQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      vat: null == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double,
      payable: null == payable
          ? _value.payable
          : payable // ignore: cast_nullable_to_non_nullable
              as double,
      amountReceived: null == amountReceived
          ? _value.amountReceived
          : amountReceived // ignore: cast_nullable_to_non_nullable
              as double,
      change: null == change
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PosTransactionStatus,
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
class _$PosTransactionEntityImpl implements _PosTransactionEntity {
  const _$PosTransactionEntityImpl(
      {this.id = 0,
      final List<PosOrderEntity> orders = const [],
      this.totalQuantity = 0,
      this.totalAmount = 0,
      this.vat = 0,
      this.payable = 0,
      this.amountReceived = 0,
      this.change = 0,
      this.status = PosTransactionStatus.pending,
      this.createdAt = null,
      this.updatedAt = null})
      : _orders = orders;

  factory _$PosTransactionEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PosTransactionEntityImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  final List<PosOrderEntity> _orders;
  @override
  @JsonKey()
  List<PosOrderEntity> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  @JsonKey()
  final double totalQuantity;
  @override
  @JsonKey()
  final double totalAmount;
  @override
  @JsonKey()
  final double vat;
  @override
  @JsonKey()
  final double payable;
  @override
  @JsonKey()
  final double amountReceived;
  @override
  @JsonKey()
  final double change;
  @override
  @JsonKey()
  final PosTransactionStatus status;
  @override
  @JsonKey()
  final DateTime? createdAt;
  @override
  @JsonKey()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'PosTransactionEntity(id: $id, orders: $orders, totalQuantity: $totalQuantity, totalAmount: $totalAmount, vat: $vat, payable: $payable, amountReceived: $amountReceived, change: $change, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PosTransactionEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.totalQuantity, totalQuantity) ||
                other.totalQuantity == totalQuantity) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.payable, payable) || other.payable == payable) &&
            (identical(other.amountReceived, amountReceived) ||
                other.amountReceived == amountReceived) &&
            (identical(other.change, change) || other.change == change) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_orders),
      totalQuantity,
      totalAmount,
      vat,
      payable,
      amountReceived,
      change,
      status,
      createdAt,
      updatedAt);

  /// Create a copy of PosTransactionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PosTransactionEntityImplCopyWith<_$PosTransactionEntityImpl>
      get copyWith =>
          __$$PosTransactionEntityImplCopyWithImpl<_$PosTransactionEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PosTransactionEntityImplToJson(
      this,
    );
  }
}

abstract class _PosTransactionEntity implements PosTransactionEntity {
  const factory _PosTransactionEntity(
      {final int id,
      final List<PosOrderEntity> orders,
      final double totalQuantity,
      final double totalAmount,
      final double vat,
      final double payable,
      final double amountReceived,
      final double change,
      final PosTransactionStatus status,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$PosTransactionEntityImpl;

  factory _PosTransactionEntity.fromJson(Map<String, dynamic> json) =
      _$PosTransactionEntityImpl.fromJson;

  @override
  int get id;
  @override
  List<PosOrderEntity> get orders;
  @override
  double get totalQuantity;
  @override
  double get totalAmount;
  @override
  double get vat;
  @override
  double get payable;
  @override
  double get amountReceived;
  @override
  double get change;
  @override
  PosTransactionStatus get status;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of PosTransactionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PosTransactionEntityImplCopyWith<_$PosTransactionEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
