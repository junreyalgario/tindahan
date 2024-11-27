// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pos_item_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PosItemState {
  List<CategoryEntity> get categories => throw _privateConstructorUsedError;
  CategoryEntity? get activeCategory => throw _privateConstructorUsedError;

  /// Create a copy of PosItemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PosItemStateCopyWith<PosItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosItemStateCopyWith<$Res> {
  factory $PosItemStateCopyWith(
          PosItemState value, $Res Function(PosItemState) then) =
      _$PosItemStateCopyWithImpl<$Res, PosItemState>;
  @useResult
  $Res call({List<CategoryEntity> categories, CategoryEntity? activeCategory});

  $CategoryEntityCopyWith<$Res>? get activeCategory;
}

/// @nodoc
class _$PosItemStateCopyWithImpl<$Res, $Val extends PosItemState>
    implements $PosItemStateCopyWith<$Res> {
  _$PosItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PosItemState
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

  /// Create a copy of PosItemState
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
abstract class _$$PosItemStateImplCopyWith<$Res>
    implements $PosItemStateCopyWith<$Res> {
  factory _$$PosItemStateImplCopyWith(
          _$PosItemStateImpl value, $Res Function(_$PosItemStateImpl) then) =
      __$$PosItemStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CategoryEntity> categories, CategoryEntity? activeCategory});

  @override
  $CategoryEntityCopyWith<$Res>? get activeCategory;
}

/// @nodoc
class __$$PosItemStateImplCopyWithImpl<$Res>
    extends _$PosItemStateCopyWithImpl<$Res, _$PosItemStateImpl>
    implements _$$PosItemStateImplCopyWith<$Res> {
  __$$PosItemStateImplCopyWithImpl(
      _$PosItemStateImpl _value, $Res Function(_$PosItemStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PosItemState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? activeCategory = freezed,
  }) {
    return _then(_$PosItemStateImpl(
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

class _$PosItemStateImpl implements _PosItemState {
  const _$PosItemStateImpl(
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
    return 'PosItemState(categories: $categories, activeCategory: $activeCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PosItemStateImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.activeCategory, activeCategory) ||
                other.activeCategory == activeCategory));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_categories), activeCategory);

  /// Create a copy of PosItemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PosItemStateImplCopyWith<_$PosItemStateImpl> get copyWith =>
      __$$PosItemStateImplCopyWithImpl<_$PosItemStateImpl>(this, _$identity);
}

abstract class _PosItemState implements PosItemState {
  const factory _PosItemState(
      {final List<CategoryEntity> categories,
      final CategoryEntity? activeCategory}) = _$PosItemStateImpl;

  @override
  List<CategoryEntity> get categories;
  @override
  CategoryEntity? get activeCategory;

  /// Create a copy of PosItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PosItemStateImplCopyWith<_$PosItemStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
