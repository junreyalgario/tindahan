// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pos_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PosItemEntity {
  ProductEntity? get product => throw _privateConstructorUsedError;
  double get priceChange => throw _privateConstructorUsedError;
  double get orderCount => throw _privateConstructorUsedError;
  double get subTotalAmount => throw _privateConstructorUsedError;

  /// Create a copy of PosItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PosItemEntityCopyWith<PosItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosItemEntityCopyWith<$Res> {
  factory $PosItemEntityCopyWith(
          PosItemEntity value, $Res Function(PosItemEntity) then) =
      _$PosItemEntityCopyWithImpl<$Res, PosItemEntity>;
  @useResult
  $Res call(
      {ProductEntity? product,
      double priceChange,
      double orderCount,
      double subTotalAmount});

  $ProductEntityCopyWith<$Res>? get product;
}

/// @nodoc
class _$PosItemEntityCopyWithImpl<$Res, $Val extends PosItemEntity>
    implements $PosItemEntityCopyWith<$Res> {
  _$PosItemEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PosItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = freezed,
    Object? priceChange = null,
    Object? orderCount = null,
    Object? subTotalAmount = null,
  }) {
    return _then(_value.copyWith(
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity?,
      priceChange: null == priceChange
          ? _value.priceChange
          : priceChange // ignore: cast_nullable_to_non_nullable
              as double,
      orderCount: null == orderCount
          ? _value.orderCount
          : orderCount // ignore: cast_nullable_to_non_nullable
              as double,
      subTotalAmount: null == subTotalAmount
          ? _value.subTotalAmount
          : subTotalAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of PosItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductEntityCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductEntityCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PosItemEntityImplCopyWith<$Res>
    implements $PosItemEntityCopyWith<$Res> {
  factory _$$PosItemEntityImplCopyWith(
          _$PosItemEntityImpl value, $Res Function(_$PosItemEntityImpl) then) =
      __$$PosItemEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductEntity? product,
      double priceChange,
      double orderCount,
      double subTotalAmount});

  @override
  $ProductEntityCopyWith<$Res>? get product;
}

/// @nodoc
class __$$PosItemEntityImplCopyWithImpl<$Res>
    extends _$PosItemEntityCopyWithImpl<$Res, _$PosItemEntityImpl>
    implements _$$PosItemEntityImplCopyWith<$Res> {
  __$$PosItemEntityImplCopyWithImpl(
      _$PosItemEntityImpl _value, $Res Function(_$PosItemEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PosItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = freezed,
    Object? priceChange = null,
    Object? orderCount = null,
    Object? subTotalAmount = null,
  }) {
    return _then(_$PosItemEntityImpl(
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity?,
      priceChange: null == priceChange
          ? _value.priceChange
          : priceChange // ignore: cast_nullable_to_non_nullable
              as double,
      orderCount: null == orderCount
          ? _value.orderCount
          : orderCount // ignore: cast_nullable_to_non_nullable
              as double,
      subTotalAmount: null == subTotalAmount
          ? _value.subTotalAmount
          : subTotalAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$PosItemEntityImpl implements _PosItemEntity {
  const _$PosItemEntityImpl(
      {this.product = null,
      this.priceChange = 0,
      this.orderCount = 0,
      this.subTotalAmount = 0});

  @override
  @JsonKey()
  final ProductEntity? product;
  @override
  @JsonKey()
  final double priceChange;
  @override
  @JsonKey()
  final double orderCount;
  @override
  @JsonKey()
  final double subTotalAmount;

  @override
  String toString() {
    return 'PosItemEntity(product: $product, priceChange: $priceChange, orderCount: $orderCount, subTotalAmount: $subTotalAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PosItemEntityImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.priceChange, priceChange) ||
                other.priceChange == priceChange) &&
            (identical(other.orderCount, orderCount) ||
                other.orderCount == orderCount) &&
            (identical(other.subTotalAmount, subTotalAmount) ||
                other.subTotalAmount == subTotalAmount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, product, priceChange, orderCount, subTotalAmount);

  /// Create a copy of PosItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PosItemEntityImplCopyWith<_$PosItemEntityImpl> get copyWith =>
      __$$PosItemEntityImplCopyWithImpl<_$PosItemEntityImpl>(this, _$identity);
}

abstract class _PosItemEntity implements PosItemEntity {
  const factory _PosItemEntity(
      {final ProductEntity? product,
      final double priceChange,
      final double orderCount,
      final double subTotalAmount}) = _$PosItemEntityImpl;

  @override
  ProductEntity? get product;
  @override
  double get priceChange;
  @override
  double get orderCount;
  @override
  double get subTotalAmount;

  /// Create a copy of PosItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PosItemEntityImplCopyWith<_$PosItemEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
