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
  double get currentCost => throw _privateConstructorUsedError;
  double get wac => throw _privateConstructorUsedError;
  double get stockLevel => throw _privateConstructorUsedError;
  double get reorderLevel => throw _privateConstructorUsedError;
  DateTime? get lastStockUpdate => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  ProductEntity? get productEntity => throw _privateConstructorUsedError;
  List<InventoryTransactionEntity> get transactions =>
      throw _privateConstructorUsedError;

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
      double currentCost,
      double wac,
      double stockLevel,
      double reorderLevel,
      DateTime? lastStockUpdate,
      DateTime? createdAt,
      DateTime? updatedAt,
      ProductEntity? productEntity,
      List<InventoryTransactionEntity> transactions});

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
    Object? currentCost = null,
    Object? wac = null,
    Object? stockLevel = null,
    Object? reorderLevel = null,
    Object? lastStockUpdate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? productEntity = freezed,
    Object? transactions = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      currentCost: null == currentCost
          ? _value.currentCost
          : currentCost // ignore: cast_nullable_to_non_nullable
              as double,
      wac: null == wac
          ? _value.wac
          : wac // ignore: cast_nullable_to_non_nullable
              as double,
      stockLevel: null == stockLevel
          ? _value.stockLevel
          : stockLevel // ignore: cast_nullable_to_non_nullable
              as double,
      reorderLevel: null == reorderLevel
          ? _value.reorderLevel
          : reorderLevel // ignore: cast_nullable_to_non_nullable
              as double,
      lastStockUpdate: freezed == lastStockUpdate
          ? _value.lastStockUpdate
          : lastStockUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      productEntity: freezed == productEntity
          ? _value.productEntity
          : productEntity // ignore: cast_nullable_to_non_nullable
              as ProductEntity?,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<InventoryTransactionEntity>,
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
      double currentCost,
      double wac,
      double stockLevel,
      double reorderLevel,
      DateTime? lastStockUpdate,
      DateTime? createdAt,
      DateTime? updatedAt,
      ProductEntity? productEntity,
      List<InventoryTransactionEntity> transactions});

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
    Object? currentCost = null,
    Object? wac = null,
    Object? stockLevel = null,
    Object? reorderLevel = null,
    Object? lastStockUpdate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? productEntity = freezed,
    Object? transactions = null,
  }) {
    return _then(_$InventoryEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      currentCost: null == currentCost
          ? _value.currentCost
          : currentCost // ignore: cast_nullable_to_non_nullable
              as double,
      wac: null == wac
          ? _value.wac
          : wac // ignore: cast_nullable_to_non_nullable
              as double,
      stockLevel: null == stockLevel
          ? _value.stockLevel
          : stockLevel // ignore: cast_nullable_to_non_nullable
              as double,
      reorderLevel: null == reorderLevel
          ? _value.reorderLevel
          : reorderLevel // ignore: cast_nullable_to_non_nullable
              as double,
      lastStockUpdate: freezed == lastStockUpdate
          ? _value.lastStockUpdate
          : lastStockUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      productEntity: freezed == productEntity
          ? _value.productEntity
          : productEntity // ignore: cast_nullable_to_non_nullable
              as ProductEntity?,
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<InventoryTransactionEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InventoryEntityImpl implements _InventoryEntity {
  const _$InventoryEntityImpl(
      {this.id = null,
      this.currentCost = 0,
      this.wac = 0,
      this.stockLevel = 0,
      this.reorderLevel = 0,
      this.lastStockUpdate = null,
      this.createdAt = null,
      this.updatedAt = null,
      this.productEntity = null,
      final List<InventoryTransactionEntity> transactions = const []})
      : _transactions = transactions;

  factory _$InventoryEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$InventoryEntityImplFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final double currentCost;
  @override
  @JsonKey()
  final double wac;
  @override
  @JsonKey()
  final double stockLevel;
  @override
  @JsonKey()
  final double reorderLevel;
  @override
  @JsonKey()
  final DateTime? lastStockUpdate;
  @override
  @JsonKey()
  final DateTime? createdAt;
  @override
  @JsonKey()
  final DateTime? updatedAt;
  @override
  @JsonKey()
  final ProductEntity? productEntity;
  final List<InventoryTransactionEntity> _transactions;
  @override
  @JsonKey()
  List<InventoryTransactionEntity> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'InventoryEntity(id: $id, currentCost: $currentCost, wac: $wac, stockLevel: $stockLevel, reorderLevel: $reorderLevel, lastStockUpdate: $lastStockUpdate, createdAt: $createdAt, updatedAt: $updatedAt, productEntity: $productEntity, transactions: $transactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.currentCost, currentCost) ||
                other.currentCost == currentCost) &&
            (identical(other.wac, wac) || other.wac == wac) &&
            (identical(other.stockLevel, stockLevel) ||
                other.stockLevel == stockLevel) &&
            (identical(other.reorderLevel, reorderLevel) ||
                other.reorderLevel == reorderLevel) &&
            (identical(other.lastStockUpdate, lastStockUpdate) ||
                other.lastStockUpdate == lastStockUpdate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.productEntity, productEntity) ||
                other.productEntity == productEntity) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      currentCost,
      wac,
      stockLevel,
      reorderLevel,
      lastStockUpdate,
      createdAt,
      updatedAt,
      productEntity,
      const DeepCollectionEquality().hash(_transactions));

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
          final double currentCost,
          final double wac,
          final double stockLevel,
          final double reorderLevel,
          final DateTime? lastStockUpdate,
          final DateTime? createdAt,
          final DateTime? updatedAt,
          final ProductEntity? productEntity,
          final List<InventoryTransactionEntity> transactions}) =
      _$InventoryEntityImpl;

  factory _InventoryEntity.fromJson(Map<String, dynamic> json) =
      _$InventoryEntityImpl.fromJson;

  @override
  int? get id;
  @override
  double get currentCost;
  @override
  double get wac;
  @override
  double get stockLevel;
  @override
  double get reorderLevel;
  @override
  DateTime? get lastStockUpdate;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  ProductEntity? get productEntity;
  @override
  List<InventoryTransactionEntity> get transactions;

  /// Create a copy of InventoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InventoryEntityImplCopyWith<_$InventoryEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
