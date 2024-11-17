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
  List<CategoryEntity> get categories => throw _privateConstructorUsedError;

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
  $Res call({ProductEntity product, List<CategoryEntity> categories});

  $ProductEntityCopyWith<$Res> get product;
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
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntity>,
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
}

/// @nodoc
abstract class _$$ProductEntryStateImplCopyWith<$Res>
    implements $ProductEntryStateCopyWith<$Res> {
  factory _$$ProductEntryStateImplCopyWith(_$ProductEntryStateImpl value,
          $Res Function(_$ProductEntryStateImpl) then) =
      __$$ProductEntryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductEntity product, List<CategoryEntity> categories});

  @override
  $ProductEntityCopyWith<$Res> get product;
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
    Object? categories = null,
  }) {
    return _then(_$ProductEntryStateImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntity>,
    ));
  }
}

/// @nodoc

class _$ProductEntryStateImpl implements _ProductEntryState {
  const _$ProductEntryStateImpl(
      {this.product = const ProductEntity(),
      final List<CategoryEntity> categories = const []})
      : _categories = categories;

  @override
  @JsonKey()
  final ProductEntity product;
  final List<CategoryEntity> _categories;
  @override
  @JsonKey()
  List<CategoryEntity> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'ProductEntryState(product: $product, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductEntryStateImpl &&
            (identical(other.product, product) || other.product == product) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, product, const DeepCollectionEquality().hash(_categories));

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
      final List<CategoryEntity> categories}) = _$ProductEntryStateImpl;

  @override
  ProductEntity get product;
  @override
  List<CategoryEntity> get categories;

  /// Create a copy of ProductEntryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductEntryStateImplCopyWith<_$ProductEntryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
