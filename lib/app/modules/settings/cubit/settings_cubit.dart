import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';

class SettingsCubit extends HydratedCubit<Brightness> {
  SettingsCubit() : super(Brightness.light);

  void toggleBrightness() {
    emit(state == Brightness.light ? Brightness.dark : Brightness.light);
  }

  @override
  Brightness? fromJson(Map<String, dynamic> json) {
    return Brightness.values[json['brightness'] as int];
  }

  @override
  Map<String, dynamic>? toJson(Brightness state) {
    return <String, int>{'brightness': state.index};
  }
}
