// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_entry_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductEntryState {
  ProductEntity get product => throw _privateConstructorUsedError;
  InventoryEntity get inventory => throw _privateConstructorUsedError;
  List<CategoryEntity> get categories => throw _privateConstructorUsedError;
  List<UomEntity> get uomList => throw _privateConstructorUsedError;

  /// Create a copy of ProductEntryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductEntryStateCopyWith<ProductEntryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEntryStateCopyWith<$Res> {
  factory $ProductEntryStateCopyWith(
          ProductEntryState value, $Res Function(ProductEntryState) then) =
      _$ProductEntryStateCopyWithImpl<$Res, ProductEntryState>;
  @useResult
  $Res call(
      {ProductEntity product,
      InventoryEntity inventory,
      List<CategoryEntity> categories,
      List<UomEntity> uomList});

  $ProductEntityCopyWith<$Res> get product;
  $InventoryEntityCopyWith<$Res> get inventory;
}

/// @nodoc
class _$ProductEntryStateCopyWithImpl<$Res, $Val extends ProductEntryState>
    implements $ProductEntryStateCopyWith<$Res> {
  _$ProductEntryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductEntryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? inventory = null,
    Object? categories = null,
    Object? uomList = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity,
      inventory: null == inventory
          ? _value.inventory
          : inventory // ignore: cast_nullable_to_non_nullable
              as InventoryEntity,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntity>,
      uomList: null == uomList
          ? _value.uomList
          : uomList // ignore: cast_nullable_to_non_nullable
              as List<UomEntity>,
    ) as $Val);
  }

  /// Create a copy of ProductEntryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductEntityCopyWith<$Res> get product {
    return $ProductEntityCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  /// Create a copy of ProductEntryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InventoryEntityCopyWith<$Res> get inventory {
    return $InventoryEntityCopyWith<$Res>(_value.inventory, (value) {
      return _then(_value.copyWith(inventory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductEntryStateImplCopyWith<$Res>
    implements $ProductEntryStateCopyWith<$Res> {
  factory _$$ProductEntryStateImplCopyWith(_$ProductEntryStateImpl value,
          $Res Function(_$ProductEntryStateImpl) then) =
      __$$ProductEntryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductEntity product,
      InventoryEntity inventory,
      List<CategoryEntity> categories,
      List<UomEntity> uomList});

  @override
  $ProductEntityCopyWith<$Res> get product;
  @override
  $InventoryEntityCopyWith<$Res> get inventory;
}

/// @nodoc
class __$$ProductEntryStateImplCopyWithImpl<$Res>
    extends _$ProductEntryStateCopyWithImpl<$Res, _$ProductEntryStateImpl>
    implements _$$ProductEntryStateImplCopyWith<$Res> {
  __$$ProductEntryStateImplCopyWithImpl(_$ProductEntryStateImpl _value,
      $Res Function(_$ProductEntryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEntryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? inventory = null,
    Object? categories = null,
    Object? uomList = null,
  }) {
    return _then(_$ProductEntryStateImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity,
      inventory: null == inventory
          ? _value.inventory
          : inventory // ignore: cast_nullable_to_non_nullable
              as InventoryEntity,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntity>,
      uomList: null == uomList
          ? _value._uomList
          : uomList // ignore: cast_nullable_to_non_nullable
              as List<UomEntity>,
    ));
  }
}

/// @nodoc

class _$ProductEntryStateImpl implements _ProductEntryState {
  const _$ProductEntryStateImpl(
      {this.product = const ProductEntity(),
      this.inventory = const InventoryEntity(),
      final List<CategoryEntity> categories = const [],
      final List<UomEntity> uomList = const []})
      : _categories = categories,
        _uomList = uomList;

  @override
  @JsonKey()
  final ProductEntity product;
  @override
  @JsonKey()
  final InventoryEntity inventory;
  final List<CategoryEntity> _categories;
  @override
  @JsonKey()
  List<CategoryEntity> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<UomEntity> _uomList;
  @override
  @JsonKey()
  List<UomEntity> get uomList {
    if (_uomList is EqualUnmodifiableListView) return _uomList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_uomList);
  }

  @override
  String toString() {
    return 'ProductEntryState(product: $product, inventory: $inventory, categories: $categories, uomList: $uomList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductEntryStateImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.inventory, inventory) ||
                other.inventory == inventory) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._uomList, _uomList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      product,
      inventory,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_uomList));

  /// Create a copy of ProductEntryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductEntryStateImplCopyWith<_$ProductEntryStateImpl> get copyWith =>
      __$$ProductEntryStateImplCopyWithImpl<_$ProductEntryStateImpl>(
          this, _$identity);
}

abstract class _ProductEntryState implements ProductEntryState {
  const factory _ProductEntryState(
      {final ProductEntity product,
      final InventoryEntity inventory,
      final List<CategoryEntity> categories,
      final List<UomEntity> uomList}) = _$ProductEntryStateImpl;

  @override
  ProductEntity get product;
  @override
  InventoryEntity get inventory;
  @override
  List<CategoryEntity> get categories;
  @override
  List<UomEntity> get uomList;

  /// Create a copy of ProductEntryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductEntryStateImplCopyWith<_$ProductEntryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
