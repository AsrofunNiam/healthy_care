import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_create.freezed.dart';
part 'user_create.g.dart';

@freezed
class UserCreate with _$UserCreate {
  factory UserCreate({
    required String? name,
    required String? password,
    required String? email,
    required String? username,
  }) = _UserCreate;
  const UserCreate._();

  factory UserCreate.fromJson(Map<String, dynamic> json) =>
      _$UserCreateFromJson(json);
}
