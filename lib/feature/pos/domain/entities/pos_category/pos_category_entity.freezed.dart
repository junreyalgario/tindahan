// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pos_category_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PosCategoryEntity {
  CategoryEntity? get category => throw _privateConstructorUsedError;
  List<PosItemEntity>? get items => throw _privateConstructorUsedError;

  /// Create a copy of PosCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PosCategoryEntityCopyWith<PosCategoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosCategoryEntityCopyWith<$Res> {
  factory $PosCategoryEntityCopyWith(
          PosCategoryEntity value, $Res Function(PosCategoryEntity) then) =
      _$PosCategoryEntityCopyWithImpl<$Res, PosCategoryEntity>;
  @useResult
  $Res call({CategoryEntity? category, List<PosItemEntity>? items});

  $CategoryEntityCopyWith<$Res>? get category;
}

/// @nodoc
class _$PosCategoryEntityCopyWithImpl<$Res, $Val extends PosCategoryEntity>
    implements $PosCategoryEntityCopyWith<$Res> {
  _$PosCategoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PosCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryEntity?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PosItemEntity>?,
    ) as $Val);
  }

  /// Create a copy of PosCategoryEntity
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
}

/// @nodoc
abstract class _$$PosCategoryEntityImplCopyWith<$Res>
    implements $PosCategoryEntityCopyWith<$Res> {
  factory _$$PosCategoryEntityImplCopyWith(_$PosCategoryEntityImpl value,
          $Res Function(_$PosCategoryEntityImpl) then) =
      __$$PosCategoryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategoryEntity? category, List<PosItemEntity>? items});

  @override
  $CategoryEntityCopyWith<$Res>? get category;
}

/// @nodoc
class __$$PosCategoryEntityImplCopyWithImpl<$Res>
    extends _$PosCategoryEntityCopyWithImpl<$Res, _$PosCategoryEntityImpl>
    implements _$$PosCategoryEntityImplCopyWith<$Res> {
  __$$PosCategoryEntityImplCopyWithImpl(_$PosCategoryEntityImpl _value,
      $Res Function(_$PosCategoryEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PosCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? items = freezed,
  }) {
    return _then(_$PosCategoryEntityImpl(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryEntity?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PosItemEntity>?,
    ));
  }
}

/// @nodoc

class _$PosCategoryEntityImpl implements _PosCategoryEntity {
  const _$PosCategoryEntityImpl(
      {this.category = null, final List<PosItemEntity>? items = null})
      : _items = items;

  @override
  @JsonKey()
  final CategoryEntity? category;
  final List<PosItemEntity>? _items;
  @override
  @JsonKey()
  List<PosItemEntity>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PosCategoryEntity(category: $category, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PosCategoryEntityImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, category, const DeepCollectionEquality().hash(_items));

  /// Create a copy of PosCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PosCategoryEntityImplCopyWith<_$PosCategoryEntityImpl> get copyWith =>
      __$$PosCategoryEntityImplCopyWithImpl<_$PosCategoryEntityImpl>(
          this, _$identity);
}

abstract class _PosCategoryEntity implements PosCategoryEntity {
  const factory _PosCategoryEntity(
      {final CategoryEntity? category,
      final List<PosItemEntity>? items}) = _$PosCategoryEntityImpl;

  @override
  CategoryEntity? get category;
  @override
  List<PosItemEntity>? get items;

  /// Create a copy of PosCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PosCategoryEntityImplCopyWith<_$PosCategoryEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
