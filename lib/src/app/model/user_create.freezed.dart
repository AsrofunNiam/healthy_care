// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserCreate _$UserCreateFromJson(Map<String, dynamic> json) {
  return _UserCreate.fromJson(json);
}

/// @nodoc
mixin _$UserCreate {
  String? get name => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCreateCopyWith<UserCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCreateCopyWith<$Res> {
  factory $UserCreateCopyWith(
          UserCreate value, $Res Function(UserCreate) then) =
      _$UserCreateCopyWithImpl<$Res, UserCreate>;
  @useResult
  $Res call({String? name, String? password, String? email, String? username});
}

/// @nodoc
class _$UserCreateCopyWithImpl<$Res, $Val extends UserCreate>
    implements $UserCreateCopyWith<$Res> {
  _$UserCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? password = freezed,
    Object? email = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCreateCopyWith<$Res>
    implements $UserCreateCopyWith<$Res> {
  factory _$$_UserCreateCopyWith(
          _$_UserCreate value, $Res Function(_$_UserCreate) then) =
      __$$_UserCreateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? password, String? email, String? username});
}

/// @nodoc
class __$$_UserCreateCopyWithImpl<$Res>
    extends _$UserCreateCopyWithImpl<$Res, _$_UserCreate>
    implements _$$_UserCreateCopyWith<$Res> {
  __$$_UserCreateCopyWithImpl(
      _$_UserCreate _value, $Res Function(_$_UserCreate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? password = freezed,
    Object? email = freezed,
    Object? username = freezed,
  }) {
    return _then(_$_UserCreate(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserCreate extends _UserCreate {
  _$_UserCreate(
      {required this.name,
      required this.password,
      required this.email,
      required this.username})
      : super._();

  factory _$_UserCreate.fromJson(Map<String, dynamic> json) =>
      _$$_UserCreateFromJson(json);

  @override
  final String? name;
  @override
  final String? password;
  @override
  final String? email;
  @override
  final String? username;

  @override
  String toString() {
    return 'UserCreate(name: $name, password: $password, email: $email, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserCreate &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, password, email, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCreateCopyWith<_$_UserCreate> get copyWith =>
      __$$_UserCreateCopyWithImpl<_$_UserCreate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserCreateToJson(
      this,
    );
  }
}

abstract class _UserCreate extends UserCreate {
  factory _UserCreate(
      {required final String? name,
      required final String? password,
      required final String? email,
      required final String? username}) = _$_UserCreate;
  _UserCreate._() : super._();

  factory _UserCreate.fromJson(Map<String, dynamic> json) =
      _$_UserCreate.fromJson;

  @override
  String? get name;
  @override
  String? get password;
  @override
  String? get email;
  @override
  String? get username;
  @override
  @JsonKey(ignore: true)
  _$$_UserCreateCopyWith<_$_UserCreate> get copyWith =>
      throw _privateConstructorUsedError;
}
