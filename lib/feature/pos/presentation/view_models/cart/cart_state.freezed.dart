// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartState {
  Map<String, PosOrderEntity> get posItems =>
      throw _privateConstructorUsedError;
  double get totalqty => throw _privateConstructorUsedError;
  double get grandTotalAmount => throw _privateConstructorUsedError;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call(
      {Map<String, PosOrderEntity> posItems,
      double totalqty,
      double grandTotalAmount});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posItems = null,
    Object? totalqty = null,
    Object? grandTotalAmount = null,
  }) {
    return _then(_value.copyWith(
      posItems: null == posItems
          ? _value.posItems
          : posItems // ignore: cast_nullable_to_non_nullable
              as Map<String, PosOrderEntity>,
      totalqty: null == totalqty
          ? _value.totalqty
          : totalqty // ignore: cast_nullable_to_non_nullable
              as double,
      grandTotalAmount: null == grandTotalAmount
          ? _value.grandTotalAmount
          : grandTotalAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartStateImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$CartStateImplCopyWith(
          _$CartStateImpl value, $Res Function(_$CartStateImpl) then) =
      __$$CartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, PosOrderEntity> posItems,
      double totalqty,
      double grandTotalAmount});
}

/// @nodoc
class __$$CartStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateImpl>
    implements _$$CartStateImplCopyWith<$Res> {
  __$$CartStateImplCopyWithImpl(
      _$CartStateImpl _value, $Res Function(_$CartStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posItems = null,
    Object? totalqty = null,
    Object? grandTotalAmount = null,
  }) {
    return _then(_$CartStateImpl(
      posItems: null == posItems
          ? _value._posItems
          : posItems // ignore: cast_nullable_to_non_nullable
              as Map<String, PosOrderEntity>,
      totalqty: null == totalqty
          ? _value.totalqty
          : totalqty // ignore: cast_nullable_to_non_nullable
              as double,
      grandTotalAmount: null == grandTotalAmount
          ? _value.grandTotalAmount
          : grandTotalAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CartStateImpl with DiagnosticableTreeMixin implements _CartState {
  const _$CartStateImpl(
      {final Map<String, PosOrderEntity> posItems = const {},
      this.totalqty = 0,
      this.grandTotalAmount = 0})
      : _posItems = posItems;

  final Map<String, PosOrderEntity> _posItems;
  @override
  @JsonKey()
  Map<String, PosOrderEntity> get posItems {
    if (_posItems is EqualUnmodifiableMapView) return _posItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_posItems);
  }

  @override
  @JsonKey()
  final double totalqty;
  @override
  @JsonKey()
  final double grandTotalAmount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartState(posItems: $posItems, totalqty: $totalqty, grandTotalAmount: $grandTotalAmount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartState'))
      ..add(DiagnosticsProperty('posItems', posItems))
      ..add(DiagnosticsProperty('totalqty', totalqty))
      ..add(DiagnosticsProperty('grandTotalAmount', grandTotalAmount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateImpl &&
            const DeepCollectionEquality().equals(other._posItems, _posItems) &&
            (identical(other.totalqty, totalqty) ||
                other.totalqty == totalqty) &&
            (identical(other.grandTotalAmount, grandTotalAmount) ||
                other.grandTotalAmount == grandTotalAmount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_posItems),
      totalqty,
      grandTotalAmount);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      __$$CartStateImplCopyWithImpl<_$CartStateImpl>(this, _$identity);
}

abstract class _CartState implements CartState {
  const factory _CartState(
      {final Map<String, PosOrderEntity> posItems,
      final double totalqty,
      final double grandTotalAmount}) = _$CartStateImpl;

  @override
  Map<String, PosOrderEntity> get posItems;
  @override
  double get totalqty;
  @override
  double get grandTotalAmount;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
