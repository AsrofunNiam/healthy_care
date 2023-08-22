import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_care/constant/string.dart';
import 'package:healthy_care/src/app/model/clinic_list.dart';
import 'package:healthy_care/src/app/resource/clinic_list_repository.dart';
import 'package:healthy_care/src/app/resource/user_repository.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'clinic_list_query_bloc.freezed.dart';

@freezed
class ClinicListQueryState with _$ClinicListQueryState {
  const factory ClinicListQueryState.initial() = _Initial;
  const factory ClinicListQueryState.loading() = _Loading;
  const factory ClinicListQueryState.loaded(
    List<ClinicList> clinicList,
  ) = _Success;
  const factory ClinicListQueryState.error(String error) = _Error;
}

@freezed
class ClinicListQueryEvent with _$ClinicListQueryEvent {
  const factory ClinicListQueryEvent.get() = _Get;
}

class ClinicListQueryBloc
    extends Bloc<ClinicListQueryEvent, ClinicListQueryState> {
  ClinicListQueryBloc() : super(const _Initial()) {
    on<ClinicListQueryEvent>((event, emit) async {
      await event.when(
        get: () async {
          emit(const _Loading());
          try {
            final clinicList = await ClinicListRepository.instance
                .clinicListFetch(
                    accessToken: UserRepository.instance.tokenRepository!);

            emit(_Success(clinicList));
          } catch (error) {
            emit(const _Error(errorSomethingWentWrong));
          }
        },
      );
    });
  }
}
