// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pos_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PosState {
  List<PosOrderEntity> get allItems => throw _privateConstructorUsedError;
  List<PosOrderEntity> get items => throw _privateConstructorUsedError;
  List<PosOrderEntity> get originalItems => throw _privateConstructorUsedError;

  /// Create a copy of PosState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PosStateCopyWith<PosState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosStateCopyWith<$Res> {
  factory $PosStateCopyWith(PosState value, $Res Function(PosState) then) =
      _$PosStateCopyWithImpl<$Res, PosState>;
  @useResult
  $Res call(
      {List<PosOrderEntity> allItems,
      List<PosOrderEntity> items,
      List<PosOrderEntity> originalItems});
}

/// @nodoc
class _$PosStateCopyWithImpl<$Res, $Val extends PosState>
    implements $PosStateCopyWith<$Res> {
  _$PosStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PosState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allItems = null,
    Object? items = null,
    Object? originalItems = null,
  }) {
    return _then(_value.copyWith(
      allItems: null == allItems
          ? _value.allItems
          : allItems // ignore: cast_nullable_to_non_nullable
              as List<PosOrderEntity>,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PosOrderEntity>,
      originalItems: null == originalItems
          ? _value.originalItems
          : originalItems // ignore: cast_nullable_to_non_nullable
              as List<PosOrderEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PosStateImplCopyWith<$Res>
    implements $PosStateCopyWith<$Res> {
  factory _$$PosStateImplCopyWith(
          _$PosStateImpl value, $Res Function(_$PosStateImpl) then) =
      __$$PosStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PosOrderEntity> allItems,
      List<PosOrderEntity> items,
      List<PosOrderEntity> originalItems});
}

/// @nodoc
class __$$PosStateImplCopyWithImpl<$Res>
    extends _$PosStateCopyWithImpl<$Res, _$PosStateImpl>
    implements _$$PosStateImplCopyWith<$Res> {
  __$$PosStateImplCopyWithImpl(
      _$PosStateImpl _value, $Res Function(_$PosStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PosState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allItems = null,
    Object? items = null,
    Object? originalItems = null,
  }) {
    return _then(_$PosStateImpl(
      allItems: null == allItems
          ? _value._allItems
          : allItems // ignore: cast_nullable_to_non_nullable
              as List<PosOrderEntity>,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PosOrderEntity>,
      originalItems: null == originalItems
          ? _value._originalItems
          : originalItems // ignore: cast_nullable_to_non_nullable
              as List<PosOrderEntity>,
    ));
  }
}

/// @nodoc

class _$PosStateImpl with DiagnosticableTreeMixin implements _PosState {
  const _$PosStateImpl(
      {final List<PosOrderEntity> allItems = const [],
      final List<PosOrderEntity> items = const [],
      final List<PosOrderEntity> originalItems = const []})
      : _allItems = allItems,
        _items = items,
        _originalItems = originalItems;

  final List<PosOrderEntity> _allItems;
  @override
  @JsonKey()
  List<PosOrderEntity> get allItems {
    if (_allItems is EqualUnmodifiableListView) return _allItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allItems);
  }

  final List<PosOrderEntity> _items;
  @override
  @JsonKey()
  List<PosOrderEntity> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  final List<PosOrderEntity> _originalItems;
  @override
  @JsonKey()
  List<PosOrderEntity> get originalItems {
    if (_originalItems is EqualUnmodifiableListView) return _originalItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_originalItems);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PosState(allItems: $allItems, items: $items, originalItems: $originalItems)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PosState'))
      ..add(DiagnosticsProperty('allItems', allItems))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('originalItems', originalItems));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PosStateImpl &&
            const DeepCollectionEquality().equals(other._allItems, _allItems) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other._originalItems, _originalItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allItems),
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_originalItems));

  /// Create a copy of PosState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PosStateImplCopyWith<_$PosStateImpl> get copyWith =>
      __$$PosStateImplCopyWithImpl<_$PosStateImpl>(this, _$identity);
}

abstract class _PosState implements PosState {
  const factory _PosState(
      {final List<PosOrderEntity> allItems,
      final List<PosOrderEntity> items,
      final List<PosOrderEntity> originalItems}) = _$PosStateImpl;

  @override
  List<PosOrderEntity> get allItems;
  @override
  List<PosOrderEntity> get items;
  @override
  List<PosOrderEntity> get originalItems;

  /// Create a copy of PosState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PosStateImplCopyWith<_$PosStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
