import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_care/constant/string.dart';
import 'package:healthy_care/src/app/resource/create_user.dart';

part 'create_user_bloc.freezed.dart';

@freezed
class CreateUserState with _$CreateUserState {
  const factory CreateUserState.initial() = _Initial;
  const factory CreateUserState.loading() = _Loading;
  const factory CreateUserState.success() = _Success;
  const factory CreateUserState.error(String error) = _Error;
}

@freezed
class CreateUserEvent with _$CreateUserEvent {
  const factory CreateUserEvent.createUser({
    required String name,
    required String password,
    required String email,
    required String username,
  }) = _CreateUser;
  const factory CreateUserEvent.updateUser({
    required String name,
    required String password,
    required String email,
    required String username,
  }) = _UpdateUser;
}

class CreateUserBloc extends Bloc<CreateUserEvent, CreateUserState> {
  CreateUserBloc() : super(const _Initial()) {
    on<CreateUserEvent>((event, emit) async {
      await event.when(createUser: ((name, password, email, username) async {
        emit(const _Loading());
        try {
          final result = await UserAccountRepository.instance.createUser(
              name: name, password: password, email: email, username: username);
          emit(const _Success());
        } catch (e) {
          emit(const _$_Error(errorSomethingWentWrong));
        }
      }), updateUser: ((name, password, email, username) async {
        emit(const _Loading());
        try {
          final result = await UserAccountRepository.instance.updateUser(
              name: name, password: password, email: email, username: username);
          emit(const _Success());
        } catch (e) {
          emit(const _$_Error(errorSomethingWentWrong));
        }
      }));
    });
  }
}
