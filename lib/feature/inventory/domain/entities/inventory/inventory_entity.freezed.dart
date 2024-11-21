// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InventoryEntity _$InventoryEntityFromJson(Map<String, dynamic> json) {
  return _InventoryEntity.fromJson(json);
}

/// @nodoc
mixin _$InventoryEntity {
  int? get id => throw _privateConstructorUsedError;
  ProductEntity? get productEntity => throw _privateConstructorUsedError;
  double? get cost => throw _privateConstructorUsedError;
  double? get stocks => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this InventoryEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InventoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InventoryEntityCopyWith<InventoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryEntityCopyWith<$Res> {
  factory $InventoryEntityCopyWith(
          InventoryEntity value, $Res Function(InventoryEntity) then) =
      _$InventoryEntityCopyWithImpl<$Res, InventoryEntity>;
  @useResult
  $Res call(
      {int? id,
      ProductEntity? productEntity,
      double? cost,
      double? stocks,
      DateTime? createdAt,
      DateTime? updatedAt});

  $ProductEntityCopyWith<$Res>? get productEntity;
}

/// @nodoc
class _$InventoryEntityCopyWithImpl<$Res, $Val extends InventoryEntity>
    implements $InventoryEntityCopyWith<$Res> {
  _$InventoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InventoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productEntity = freezed,
    Object? cost = freezed,
    Object? stocks = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      productEntity: freezed == productEntity
          ? _value.productEntity
          : productEntity // ignore: cast_nullable_to_non_nullable
              as ProductEntity?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double?,
      stocks: freezed == stocks
          ? _value.stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as double?,
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

  /// Create a copy of InventoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductEntityCopyWith<$Res>? get productEntity {
    if (_value.productEntity == null) {
      return null;
    }

    return $ProductEntityCopyWith<$Res>(_value.productEntity!, (value) {
      return _then(_value.copyWith(productEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InventoryEntityImplCopyWith<$Res>
    implements $InventoryEntityCopyWith<$Res> {
  factory _$$InventoryEntityImplCopyWith(_$InventoryEntityImpl value,
          $Res Function(_$InventoryEntityImpl) then) =
      __$$InventoryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      ProductEntity? productEntity,
      double? cost,
      double? stocks,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $ProductEntityCopyWith<$Res>? get productEntity;
}

/// @nodoc
class __$$InventoryEntityImplCopyWithImpl<$Res>
    extends _$InventoryEntityCopyWithImpl<$Res, _$InventoryEntityImpl>
    implements _$$InventoryEntityImplCopyWith<$Res> {
  __$$InventoryEntityImplCopyWithImpl(
      _$InventoryEntityImpl _value, $Res Function(_$InventoryEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of InventoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productEntity = freezed,
    Object? cost = freezed,
    Object? stocks = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$InventoryEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      productEntity: freezed == productEntity
          ? _value.productEntity
          : productEntity // ignore: cast_nullable_to_non_nullable
              as ProductEntity?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double?,
      stocks: freezed == stocks
          ? _value.stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as double?,
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
class _$InventoryEntityImpl implements _InventoryEntity {
  const _$InventoryEntityImpl(
      {this.id = null,
      this.productEntity = null,
      this.cost = null,
      this.stocks = null,
      this.createdAt = null,
      this.updatedAt = null});

  factory _$InventoryEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$InventoryEntityImplFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final ProductEntity? productEntity;
  @override
  @JsonKey()
  final double? cost;
  @override
  @JsonKey()
  final double? stocks;
  @override
  @JsonKey()
  final DateTime? createdAt;
  @override
  @JsonKey()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'InventoryEntity(id: $id, productEntity: $productEntity, cost: $cost, stocks: $stocks, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productEntity, productEntity) ||
                other.productEntity == productEntity) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.stocks, stocks) || other.stocks == stocks) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, productEntity, cost, stocks, createdAt, updatedAt);

  /// Create a copy of InventoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InventoryEntityImplCopyWith<_$InventoryEntityImpl> get copyWith =>
      __$$InventoryEntityImplCopyWithImpl<_$InventoryEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InventoryEntityImplToJson(
      this,
    );
  }
}

abstract class _InventoryEntity implements InventoryEntity {
  const factory _InventoryEntity(
      {final int? id,
      final ProductEntity? productEntity,
      final double? cost,
      final double? stocks,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$InventoryEntityImpl;

  factory _InventoryEntity.fromJson(Map<String, dynamic> json) =
      _$InventoryEntityImpl.fromJson;

  @override
  int? get id;
  @override
  ProductEntity? get productEntity;
  @override
  double? get cost;
  @override
  double? get stocks;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of InventoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InventoryEntityImplCopyWith<_$InventoryEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
