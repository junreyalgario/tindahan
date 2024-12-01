// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductEntity _$ProductEntityFromJson(Map<String, dynamic> json) {
  return _ProductEntity.fromJson(json);
}

/// @nodoc
mixin _$ProductEntity {
  int? get id => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  CategoryEntity? get category => throw _privateConstructorUsedError;
  UomEntity? get uom => throw _privateConstructorUsedError;
  InventoryEntity? get inventory => throw _privateConstructorUsedError;

  /// Serializes this ProductEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductEntityCopyWith<ProductEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEntityCopyWith<$Res> {
  factory $ProductEntityCopyWith(
          ProductEntity value, $Res Function(ProductEntity) then) =
      _$ProductEntityCopyWithImpl<$Res, ProductEntity>;
  @useResult
  $Res call(
      {int? id,
      String? photo,
      String? name,
      double? price,
      DateTime? createdAt,
      DateTime? updatedAt,
      CategoryEntity? category,
      UomEntity? uom,
      InventoryEntity? inventory});

  $CategoryEntityCopyWith<$Res>? get category;
  $UomEntityCopyWith<$Res>? get uom;
  $InventoryEntityCopyWith<$Res>? get inventory;
}

/// @nodoc
class _$ProductEntityCopyWithImpl<$Res, $Val extends ProductEntity>
    implements $ProductEntityCopyWith<$Res> {
  _$ProductEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? photo = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? category = freezed,
    Object? uom = freezed,
    Object? inventory = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryEntity?,
      uom: freezed == uom
          ? _value.uom
          : uom // ignore: cast_nullable_to_non_nullable
              as UomEntity?,
      inventory: freezed == inventory
          ? _value.inventory
          : inventory // ignore: cast_nullable_to_non_nullable
              as InventoryEntity?,
    ) as $Val);
  }

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryEntityCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryEntityCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UomEntityCopyWith<$Res>? get uom {
    if (_value.uom == null) {
      return null;
    }

    return $UomEntityCopyWith<$Res>(_value.uom!, (value) {
      return _then(_value.copyWith(uom: value) as $Val);
    });
  }

  /// Create a copy of ProductEntity
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
abstract class _$$ProductEntityImplCopyWith<$Res>
    implements $ProductEntityCopyWith<$Res> {
  factory _$$ProductEntityImplCopyWith(
          _$ProductEntityImpl value, $Res Function(_$ProductEntityImpl) then) =
      __$$ProductEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? photo,
      String? name,
      double? price,
      DateTime? createdAt,
      DateTime? updatedAt,
      CategoryEntity? category,
      UomEntity? uom,
      InventoryEntity? inventory});

  @override
  $CategoryEntityCopyWith<$Res>? get category;
  @override
  $UomEntityCopyWith<$Res>? get uom;
  @override
  $InventoryEntityCopyWith<$Res>? get inventory;
}

/// @nodoc
class __$$ProductEntityImplCopyWithImpl<$Res>
    extends _$ProductEntityCopyWithImpl<$Res, _$ProductEntityImpl>
    implements _$$ProductEntityImplCopyWith<$Res> {
  __$$ProductEntityImplCopyWithImpl(
      _$ProductEntityImpl _value, $Res Function(_$ProductEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? photo = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? category = freezed,
    Object? uom = freezed,
    Object? inventory = freezed,
  }) {
    return _then(_$ProductEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryEntity?,
      uom: freezed == uom
          ? _value.uom
          : uom // ignore: cast_nullable_to_non_nullable
              as UomEntity?,
      inventory: freezed == inventory
          ? _value.inventory
          : inventory // ignore: cast_nullable_to_non_nullable
              as InventoryEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductEntityImpl implements _ProductEntity {
  const _$ProductEntityImpl(
      {this.id = null,
      this.photo = null,
      this.name = null,
      this.price = null,
      this.createdAt = null,
      this.updatedAt = null,
      this.category = null,
      this.uom = null,
      this.inventory = null});

  factory _$ProductEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductEntityImplFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final String? photo;
  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey()
  final double? price;
  @override
  @JsonKey()
  final DateTime? createdAt;
  @override
  @JsonKey()
  final DateTime? updatedAt;
  @override
  @JsonKey()
  final CategoryEntity? category;
  @override
  @JsonKey()
  final UomEntity? uom;
  @override
  @JsonKey()
  final InventoryEntity? inventory;

  @override
  String toString() {
    return 'ProductEntity(id: $id, photo: $photo, name: $name, price: $price, createdAt: $createdAt, updatedAt: $updatedAt, category: $category, uom: $uom, inventory: $inventory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.uom, uom) || other.uom == uom) &&
            (identical(other.inventory, inventory) ||
                other.inventory == inventory));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, photo, name, price,
      createdAt, updatedAt, category, uom, inventory);

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductEntityImplCopyWith<_$ProductEntityImpl> get copyWith =>
      __$$ProductEntityImplCopyWithImpl<_$ProductEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductEntityImplToJson(
      this,
    );
  }
}

abstract class _ProductEntity implements ProductEntity {
  const factory _ProductEntity(
      {final int? id,
      final String? photo,
      final String? name,
      final double? price,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final CategoryEntity? category,
      final UomEntity? uom,
      final InventoryEntity? inventory}) = _$ProductEntityImpl;

  factory _ProductEntity.fromJson(Map<String, dynamic> json) =
      _$ProductEntityImpl.fromJson;

  @override
  int? get id;
  @override
  String? get photo;
  @override
  String? get name;
  @override
  double? get price;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  CategoryEntity? get category;
  @override
  UomEntity? get uom;
  @override
  InventoryEntity? get inventory;

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductEntityImplCopyWith<_$ProductEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
