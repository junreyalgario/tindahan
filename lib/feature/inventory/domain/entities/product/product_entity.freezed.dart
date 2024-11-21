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
  CategoryEntity? get category => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  UomEntity? get uom => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  double? get lowStockLevel => throw _privateConstructorUsedError;
  List<InventoryEntity> get inventoryList => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

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
      CategoryEntity? category,
      String? name,
      UomEntity? uom,
      double? price,
      double? lowStockLevel,
      List<InventoryEntity> inventoryList,
      DateTime? createdAt,
      DateTime? updatedAt});

  $CategoryEntityCopyWith<$Res>? get category;
  $UomEntityCopyWith<$Res>? get uom;
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
    Object? category = freezed,
    Object? name = freezed,
    Object? uom = freezed,
    Object? price = freezed,
    Object? lowStockLevel = freezed,
    Object? inventoryList = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryEntity?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      uom: freezed == uom
          ? _value.uom
          : uom // ignore: cast_nullable_to_non_nullable
              as UomEntity?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      lowStockLevel: freezed == lowStockLevel
          ? _value.lowStockLevel
          : lowStockLevel // ignore: cast_nullable_to_non_nullable
              as double?,
      inventoryList: null == inventoryList
          ? _value.inventoryList
          : inventoryList // ignore: cast_nullable_to_non_nullable
              as List<InventoryEntity>,
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
      CategoryEntity? category,
      String? name,
      UomEntity? uom,
      double? price,
      double? lowStockLevel,
      List<InventoryEntity> inventoryList,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $CategoryEntityCopyWith<$Res>? get category;
  @override
  $UomEntityCopyWith<$Res>? get uom;
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
    Object? category = freezed,
    Object? name = freezed,
    Object? uom = freezed,
    Object? price = freezed,
    Object? lowStockLevel = freezed,
    Object? inventoryList = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryEntity?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      uom: freezed == uom
          ? _value.uom
          : uom // ignore: cast_nullable_to_non_nullable
              as UomEntity?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      lowStockLevel: freezed == lowStockLevel
          ? _value.lowStockLevel
          : lowStockLevel // ignore: cast_nullable_to_non_nullable
              as double?,
      inventoryList: null == inventoryList
          ? _value._inventoryList
          : inventoryList // ignore: cast_nullable_to_non_nullable
              as List<InventoryEntity>,
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
class _$ProductEntityImpl implements _ProductEntity {
  const _$ProductEntityImpl(
      {this.id = null,
      this.photo = null,
      this.category = null,
      this.name = null,
      this.uom = null,
      this.price = null,
      this.lowStockLevel = null,
      final List<InventoryEntity> inventoryList = const [],
      this.createdAt = null,
      this.updatedAt = null})
      : _inventoryList = inventoryList;

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
  final CategoryEntity? category;
  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey()
  final UomEntity? uom;
  @override
  @JsonKey()
  final double? price;
  @override
  @JsonKey()
  final double? lowStockLevel;
  final List<InventoryEntity> _inventoryList;
  @override
  @JsonKey()
  List<InventoryEntity> get inventoryList {
    if (_inventoryList is EqualUnmodifiableListView) return _inventoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inventoryList);
  }

  @override
  @JsonKey()
  final DateTime? createdAt;
  @override
  @JsonKey()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ProductEntity(id: $id, photo: $photo, category: $category, name: $name, uom: $uom, price: $price, lowStockLevel: $lowStockLevel, inventoryList: $inventoryList, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.uom, uom) || other.uom == uom) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.lowStockLevel, lowStockLevel) ||
                other.lowStockLevel == lowStockLevel) &&
            const DeepCollectionEquality()
                .equals(other._inventoryList, _inventoryList) &&
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
      photo,
      category,
      name,
      uom,
      price,
      lowStockLevel,
      const DeepCollectionEquality().hash(_inventoryList),
      createdAt,
      updatedAt);

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
      final CategoryEntity? category,
      final String? name,
      final UomEntity? uom,
      final double? price,
      final double? lowStockLevel,
      final List<InventoryEntity> inventoryList,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$ProductEntityImpl;

  factory _ProductEntity.fromJson(Map<String, dynamic> json) =
      _$ProductEntityImpl.fromJson;

  @override
  int? get id;
  @override
  String? get photo;
  @override
  CategoryEntity? get category;
  @override
  String? get name;
  @override
  UomEntity? get uom;
  @override
  double? get price;
  @override
  double? get lowStockLevel;
  @override
  List<InventoryEntity> get inventoryList;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductEntityImplCopyWith<_$ProductEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
