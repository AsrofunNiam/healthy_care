// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clinic_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClinicList _$ClinicListFromJson(Map<String, dynamic> json) {
  return _ClinicList.fromJson(json);
}

/// @nodoc
mixin _$ClinicList {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'attributes', fromJson: ClinicListAttribute.fromJson)
  ClinicListAttribute? get clinicListAttribute =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClinicListCopyWith<ClinicList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClinicListCopyWith<$Res> {
  factory $ClinicListCopyWith(
          ClinicList value, $Res Function(ClinicList) then) =
      _$ClinicListCopyWithImpl<$Res, ClinicList>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'attributes', fromJson: ClinicListAttribute.fromJson)
      ClinicListAttribute? clinicListAttribute});

  $ClinicListAttributeCopyWith<$Res>? get clinicListAttribute;
}

/// @nodoc
class _$ClinicListCopyWithImpl<$Res, $Val extends ClinicList>
    implements $ClinicListCopyWith<$Res> {
  _$ClinicListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? clinicListAttribute = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      clinicListAttribute: freezed == clinicListAttribute
          ? _value.clinicListAttribute
          : clinicListAttribute // ignore: cast_nullable_to_non_nullable
              as ClinicListAttribute?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClinicListAttributeCopyWith<$Res>? get clinicListAttribute {
    if (_value.clinicListAttribute == null) {
      return null;
    }

    return $ClinicListAttributeCopyWith<$Res>(_value.clinicListAttribute!,
        (value) {
      return _then(_value.copyWith(clinicListAttribute: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ClinicListCopyWith<$Res>
    implements $ClinicListCopyWith<$Res> {
  factory _$$_ClinicListCopyWith(
          _$_ClinicList value, $Res Function(_$_ClinicList) then) =
      __$$_ClinicListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'attributes', fromJson: ClinicListAttribute.fromJson)
      ClinicListAttribute? clinicListAttribute});

  @override
  $ClinicListAttributeCopyWith<$Res>? get clinicListAttribute;
}

/// @nodoc
class __$$_ClinicListCopyWithImpl<$Res>
    extends _$ClinicListCopyWithImpl<$Res, _$_ClinicList>
    implements _$$_ClinicListCopyWith<$Res> {
  __$$_ClinicListCopyWithImpl(
      _$_ClinicList _value, $Res Function(_$_ClinicList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? clinicListAttribute = freezed,
  }) {
    return _then(_$_ClinicList(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      clinicListAttribute: freezed == clinicListAttribute
          ? _value.clinicListAttribute
          : clinicListAttribute // ignore: cast_nullable_to_non_nullable
              as ClinicListAttribute?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClinicList extends _ClinicList {
  _$_ClinicList(
      {this.id,
      @JsonKey(name: 'attributes', fromJson: ClinicListAttribute.fromJson)
      required this.clinicListAttribute})
      : super._();

  factory _$_ClinicList.fromJson(Map<String, dynamic> json) =>
      _$$_ClinicListFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'attributes', fromJson: ClinicListAttribute.fromJson)
  final ClinicListAttribute? clinicListAttribute;

  @override
  String toString() {
    return 'ClinicList(id: $id, clinicListAttribute: $clinicListAttribute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClinicList &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clinicListAttribute, clinicListAttribute) ||
                other.clinicListAttribute == clinicListAttribute));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, clinicListAttribute);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClinicListCopyWith<_$_ClinicList> get copyWith =>
      __$$_ClinicListCopyWithImpl<_$_ClinicList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClinicListToJson(
      this,
    );
  }
}

abstract class _ClinicList extends ClinicList {
  factory _ClinicList(
      {final int? id,
      @JsonKey(name: 'attributes', fromJson: ClinicListAttribute.fromJson)
      required final ClinicListAttribute? clinicListAttribute}) = _$_ClinicList;
  _ClinicList._() : super._();

  factory _ClinicList.fromJson(Map<String, dynamic> json) =
      _$_ClinicList.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'attributes', fromJson: ClinicListAttribute.fromJson)
  ClinicListAttribute? get clinicListAttribute;
  @override
  @JsonKey(ignore: true)
  _$$_ClinicListCopyWith<_$_ClinicList> get copyWith =>
      throw _privateConstructorUsedError;
}
