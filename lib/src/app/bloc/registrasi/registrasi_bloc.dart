import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registrasi_bloc.freezed.dart';

@freezed
class RegistrasiState with _$RegistrasiState {
  const factory RegistrasiState.initial() = _Initial;
}

@freezed
class RegistrasiEvent with _$RegistrasiEvent {
  const factory RegistrasiEvent.started() = _Started;
}

class RegistrasiBloc extends Bloc<RegistrasiEvent, RegistrasiState> {
  RegistrasiBloc() : super(_Initial()) {
    on<RegistrasiEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
