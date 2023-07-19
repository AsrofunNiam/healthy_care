import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'theme_mode_bloc.freezed.dart';

@freezed
class ThemeModeState with _$ThemeModeState {
  const factory ThemeModeState.initial() = _Initial;
}

@freezed
class ThemeModeEvent with _$ThemeModeEvent {
  const factory ThemeModeEvent.started({Theme? theme}) = _Started;
}

class ThemeModeBloc extends HydratedBloc<ThemeModeEvent, ThemeMode> {
  ThemeModeBloc() : super(ThemeMode.system) {
    on<ThemeModeEvent>((event, emit) async {
      event.when(started: (theme) {
        emit(state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark);
      });
    });
  }

  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    try {
      if (json['theme'] == 'dark') {
        return ThemeMode.dark;
      } else {
        return ThemeMode.light;
      }
    } catch (e) {
      // writeLogError(e, stack);
      return ThemeMode.system;
    }
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    if (state == ThemeMode.dark) {
      return {'theme': 'dark'};
    } else {
      return {'theme': 'light'};
    }
  }
}
