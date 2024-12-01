// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_transaction_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InventoryTransactionEntity _$InventoryTransactionEntityFromJson(
    Map<String, dynamic> json) {
  return _InventoryTransactionEntity.fromJson(json);
}

/// @nodoc
mixin _$InventoryTransactionEntity {
  int? get id => throw _privateConstructorUsedError;
  int get trsansactionType => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  double get costPerUnit => throw _privateConstructorUsedError;
  DateTime? get trsansactionDate => throw _privateConstructorUsedError;
  String? get vendorName => throw _privateConstructorUsedError;
  InventoryEntity? get inventory => throw _privateConstructorUsedError;

  /// Serializes this InventoryTransactionEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InventoryTransactionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InventoryTransactionEntityCopyWith<InventoryTransactionEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryTransactionEntityCopyWith<$Res> {
  factory $InventoryTransactionEntityCopyWith(InventoryTransactionEntity value,
          $Res Function(InventoryTransactionEntity) then) =
      _$InventoryTransactionEntityCopyWithImpl<$Res,
          InventoryTransactionEntity>;
  @useResult
  $Res call(
      {int? id,
      int trsansactionType,
      double quantity,
      double costPerUnit,
      DateTime? trsansactionDate,
      String? vendorName,
      InventoryEntity? inventory});

  $InventoryEntityCopyWith<$Res>? get inventory;
}

/// @nodoc
class _$InventoryTransactionEntityCopyWithImpl<$Res,
        $Val extends InventoryTransactionEntity>
    implements $InventoryTransactionEntityCopyWith<$Res> {
  _$InventoryTransactionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InventoryTransactionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? trsansactionType = null,
    Object? quantity = null,
    Object? costPerUnit = null,
    Object? trsansactionDate = freezed,
    Object? vendorName = freezed,
    Object? inventory = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      trsansactionType: null == trsansactionType
          ? _value.trsansactionType
          : trsansactionType // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      costPerUnit: null == costPerUnit
          ? _value.costPerUnit
          : costPerUnit // ignore: cast_nullable_to_non_nullable
              as double,
      trsansactionDate: freezed == trsansactionDate
          ? _value.trsansactionDate
          : trsansactionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      inventory: freezed == inventory
          ? _value.inventory
          : inventory // ignore: cast_nullable_to_non_nullable
              as InventoryEntity?,
    ) as $Val);
  }

  /// Create a copy of InventoryTransactionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InventoryEntityCopyWith<$Res>? get inventory {
    if (_value.inventory == null) {
      return null;
    }

    return $InventoryEntityCopyWith<$Res>(_value.inventory!, (value) {
      return _then(_value.copyWith(inventory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InventoryTransactionEntityImplCopyWith<$Res>
    implements $InventoryTransactionEntityCopyWith<$Res> {
  factory _$$InventoryTransactionEntityImplCopyWith(
          _$InventoryTransactionEntityImpl value,
          $Res Function(_$InventoryTransactionEntityImpl) then) =
      __$$InventoryTransactionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int trsansactionType,
      double quantity,
      double costPerUnit,
      DateTime? trsansactionDate,
      String? vendorName,
      InventoryEntity? inventory});

  @override
  $InventoryEntityCopyWith<$Res>? get inventory;
}

/// @nodoc
class __$$InventoryTransactionEntityImplCopyWithImpl<$Res>
    extends _$InventoryTransactionEntityCopyWithImpl<$Res,
        _$InventoryTransactionEntityImpl>
    implements _$$InventoryTransactionEntityImplCopyWith<$Res> {
  __$$InventoryTransactionEntityImplCopyWithImpl(
      _$InventoryTransactionEntityImpl _value,
      $Res Function(_$InventoryTransactionEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of InventoryTransactionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? trsansactionType = null,
    Object? quantity = null,
    Object? costPerUnit = null,
    Object? trsansactionDate = freezed,
    Object? vendorName = freezed,
    Object? inventory = freezed,
  }) {
    return _then(_$InventoryTransactionEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      trsansactionType: null == trsansactionType
          ? _value.trsansactionType
          : trsansactionType // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      costPerUnit: null == costPerUnit
          ? _value.costPerUnit
          : costPerUnit // ignore: cast_nullable_to_non_nullable
              as double,
      trsansactionDate: freezed == trsansactionDate
          ? _value.trsansactionDate
          : trsansactionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      inventory: freezed == inventory
          ? _value.inventory
          : inventory // ignore: cast_nullable_to_non_nullable
              as InventoryEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InventoryTransactionEntityImpl implements _InventoryTransactionEntity {
  const _$InventoryTransactionEntityImpl(
      {this.id = null,
      this.trsansactionType = -1,
      this.quantity = 0,
      this.costPerUnit = 0,
      this.trsansactionDate = null,
      this.vendorName = null,
      this.inventory = null});

  factory _$InventoryTransactionEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InventoryTransactionEntityImplFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final int trsansactionType;
  @override
  @JsonKey()
  final double quantity;
  @override
  @JsonKey()
  final double costPerUnit;
  @override
  @JsonKey()
  final DateTime? trsansactionDate;
  @override
  @JsonKey()
  final String? vendorName;
  @override
  @JsonKey()
  final InventoryEntity? inventory;

  @override
  String toString() {
    return 'InventoryTransactionEntity(id: $id, trsansactionType: $trsansactionType, quantity: $quantity, costPerUnit: $costPerUnit, trsansactionDate: $trsansactionDate, vendorName: $vendorName, inventory: $inventory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryTransactionEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.trsansactionType, trsansactionType) ||
                other.trsansactionType == trsansactionType) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.costPerUnit, costPerUnit) ||
                other.costPerUnit == costPerUnit) &&
            (identical(other.trsansactionDate, trsansactionDate) ||
                other.trsansactionDate == trsansactionDate) &&
            (identical(other.vendorName, vendorName) ||
                other.vendorName == vendorName) &&
            (identical(other.inventory, inventory) ||
                other.inventory == inventory));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, trsansactionType, quantity,
      costPerUnit, trsansactionDate, vendorName, inventory);

  /// Create a copy of InventoryTransactionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InventoryTransactionEntityImplCopyWith<_$InventoryTransactionEntityImpl>
      get copyWith => __$$InventoryTransactionEntityImplCopyWithImpl<
          _$InventoryTransactionEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InventoryTransactionEntityImplToJson(
      this,
    );
  }
}

abstract class _InventoryTransactionEntity
    implements InventoryTransactionEntity {
  const factory _InventoryTransactionEntity(
      {final int? id,
      final int trsansactionType,
      final double quantity,
      final double costPerUnit,
      final DateTime? trsansactionDate,
      final String? vendorName,
      final InventoryEntity? inventory}) = _$InventoryTransactionEntityImpl;

  factory _InventoryTransactionEntity.fromJson(Map<String, dynamic> json) =
      _$InventoryTransactionEntityImpl.fromJson;

  @override
  int? get id;
  @override
  int get trsansactionType;
  @override
  double get quantity;
  @override
  double get costPerUnit;
  @override
  DateTime? get trsansactionDate;
  @override
  String? get vendorName;
  @override
  InventoryEntity? get inventory;

  /// Create a copy of InventoryTransactionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InventoryTransactionEntityImplCopyWith<_$InventoryTransactionEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
