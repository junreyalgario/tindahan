// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'uom_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UomEntity _$UomEntityFromJson(Map<String, dynamic> json) {
  return _UomEntity.fromJson(json);
}

/// @nodoc
mixin _$UomEntity {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get symbol => throw _privateConstructorUsedError;
  String? get uom => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this UomEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UomEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UomEntityCopyWith<UomEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UomEntityCopyWith<$Res> {
  factory $UomEntityCopyWith(UomEntity value, $Res Function(UomEntity) then) =
      _$UomEntityCopyWithImpl<$Res, UomEntity>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? symbol,
      String? uom,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$UomEntityCopyWithImpl<$Res, $Val extends UomEntity>
    implements $UomEntityCopyWith<$Res> {
  _$UomEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UomEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? symbol = freezed,
    Object? uom = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      uom: freezed == uom
          ? _value.uom
          : uom // ignore: cast_nullable_to_non_nullable
              as String?,
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
}

/// @nodoc
abstract class _$$UomEntityImplCopyWith<$Res>
    implements $UomEntityCopyWith<$Res> {
  factory _$$UomEntityImplCopyWith(
          _$UomEntityImpl value, $Res Function(_$UomEntityImpl) then) =
      __$$UomEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? symbol,
      String? uom,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$UomEntityImplCopyWithImpl<$Res>
    extends _$UomEntityCopyWithImpl<$Res, _$UomEntityImpl>
    implements _$$UomEntityImplCopyWith<$Res> {
  __$$UomEntityImplCopyWithImpl(
      _$UomEntityImpl _value, $Res Function(_$UomEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of UomEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? symbol = freezed,
    Object? uom = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$UomEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      uom: freezed == uom
          ? _value.uom
          : uom // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$UomEntityImpl implements _UomEntity {
  const _$UomEntityImpl(
      {this.id = null,
      this.name = null,
      this.symbol = null,
      this.uom = null,
      this.createdAt = null,
      this.updatedAt = null});

  factory _$UomEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UomEntityImplFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey()
  final String? symbol;
  @override
  @JsonKey()
  final String? uom;
  @override
  @JsonKey()
  final DateTime? createdAt;
  @override
  @JsonKey()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'UomEntity(id: $id, name: $name, symbol: $symbol, uom: $uom, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UomEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.uom, uom) || other.uom == uom) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, symbol, uom, createdAt, updatedAt);

  /// Create a copy of UomEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UomEntityImplCopyWith<_$UomEntityImpl> get copyWith =>
      __$$UomEntityImplCopyWithImpl<_$UomEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UomEntityImplToJson(
      this,
    );
  }
}

abstract class _UomEntity implements UomEntity {
  const factory _UomEntity(
      {final int? id,
      final String? name,
      final String? symbol,
      final String? uom,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$UomEntityImpl;

  factory _UomEntity.fromJson(Map<String, dynamic> json) =
      _$UomEntityImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get symbol;
  @override
  String? get uom;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of UomEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UomEntityImplCopyWith<_$UomEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
