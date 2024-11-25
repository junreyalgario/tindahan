// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pos_category_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PosCategoryState {
  List<CategoryEntity> get categories => throw _privateConstructorUsedError;
  CategoryEntity? get activeCategory => throw _privateConstructorUsedError;

  /// Create a copy of PosCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PosCategoryStateCopyWith<PosCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosCategoryStateCopyWith<$Res> {
  factory $PosCategoryStateCopyWith(
          PosCategoryState value, $Res Function(PosCategoryState) then) =
      _$PosCategoryStateCopyWithImpl<$Res, PosCategoryState>;
  @useResult
  $Res call({List<CategoryEntity> categories, CategoryEntity? activeCategory});

  $CategoryEntityCopyWith<$Res>? get activeCategory;
}

/// @nodoc
class _$PosCategoryStateCopyWithImpl<$Res, $Val extends PosCategoryState>
    implements $PosCategoryStateCopyWith<$Res> {
  _$PosCategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PosCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? activeCategory = freezed,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntity>,
      activeCategory: freezed == activeCategory
          ? _value.activeCategory
          : activeCategory // ignore: cast_nullable_to_non_nullable
              as CategoryEntity?,
    ) as $Val);
  }

  /// Create a copy of PosCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryEntityCopyWith<$Res>? get activeCategory {
    if (_value.activeCategory == null) {
      return null;
    }

    return $CategoryEntityCopyWith<$Res>(_value.activeCategory!, (value) {
      return _then(_value.copyWith(activeCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PosCategoryStateImplCopyWith<$Res>
    implements $PosCategoryStateCopyWith<$Res> {
  factory _$$PosCategoryStateImplCopyWith(_$PosCategoryStateImpl value,
          $Res Function(_$PosCategoryStateImpl) then) =
      __$$PosCategoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CategoryEntity> categories, CategoryEntity? activeCategory});

  @override
  $CategoryEntityCopyWith<$Res>? get activeCategory;
}

/// @nodoc
class __$$PosCategoryStateImplCopyWithImpl<$Res>
    extends _$PosCategoryStateCopyWithImpl<$Res, _$PosCategoryStateImpl>
    implements _$$PosCategoryStateImplCopyWith<$Res> {
  __$$PosCategoryStateImplCopyWithImpl(_$PosCategoryStateImpl _value,
      $Res Function(_$PosCategoryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PosCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? activeCategory = freezed,
  }) {
    return _then(_$PosCategoryStateImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntity>,
      activeCategory: freezed == activeCategory
          ? _value.activeCategory
          : activeCategory // ignore: cast_nullable_to_non_nullable
              as CategoryEntity?,
    ));
  }
}

/// @nodoc

class _$PosCategoryStateImpl implements _PosCategoryState {
  const _$PosCategoryStateImpl(
      {final List<CategoryEntity> categories = const [],
      this.activeCategory = null})
      : _categories = categories;

  final List<CategoryEntity> _categories;
  @override
  @JsonKey()
  List<CategoryEntity> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final CategoryEntity? activeCategory;

  @override
  String toString() {
    return 'PosCategoryState(categories: $categories, activeCategory: $activeCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PosCategoryStateImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.activeCategory, activeCategory) ||
                other.activeCategory == activeCategory));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_categories), activeCategory);

  /// Create a copy of PosCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PosCategoryStateImplCopyWith<_$PosCategoryStateImpl> get copyWith =>
      __$$PosCategoryStateImplCopyWithImpl<_$PosCategoryStateImpl>(
          this, _$identity);
}

abstract class _PosCategoryState implements PosCategoryState {
  const factory _PosCategoryState(
      {final List<CategoryEntity> categories,
      final CategoryEntity? activeCategory}) = _$PosCategoryStateImpl;

  @override
  List<CategoryEntity> get categories;
  @override
  CategoryEntity? get activeCategory;

  /// Create a copy of PosCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PosCategoryStateImplCopyWith<_$PosCategoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
