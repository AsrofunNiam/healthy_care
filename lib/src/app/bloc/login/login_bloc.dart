import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_care/constant/string.dart';
import 'package:healthy_care/src/app/model/authentication.dart';
import 'package:healthy_care/src/app/resource/login_repository.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'login_bloc.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.success({Authentication? token}) = _Success;
  const factory LoginState.error(String error) = _Error;
}

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.submit({
    required String email,
    required String password,
  }) = _Submit;
}

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const _Initial()) {
    on<LoginEvent>((event, emit) async {
      await event.when(submit: (email, password) async {
        emit(const _Loading());
        try {
          final result = await LoginRepository.instance
              .login(email: email, password: password);
          emit(_Success(token: result));
        } catch (error) {
          emit(const _$_Error(errorSomethingWentWrong));
        }
      });
    });
  }
}
