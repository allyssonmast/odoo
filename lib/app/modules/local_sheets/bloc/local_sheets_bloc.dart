import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:odoo/app/modules/timer_sheets/domain/entities/timesheet.dart';

part 'local_sheets_event.dart';
part 'local_sheets_state.dart';
part 'local_sheets_bloc.freezed.dart';

@lazySingleton
class LocalSheetsBloc extends HydratedBloc<LocalSheetsEvent, LocalSheetsState> {
  LocalSheetsBloc() : super(const LocalSheetsState()) {
    on<AddTimeSheets>(_onAddTimesheet);
    on<UpdateTimeSheets>(_onUpdateTimesheet);
  }
  void _onAddTimesheet(AddTimeSheets event, Emitter<LocalSheetsState> emit) {
    final state = this.state;
    emit(LocalSheetsState(
      localTimeSheets: List.from(state.localTimeSheets)..add(event.timesheet),
    ));
  }

  void _onUpdateTimesheet(
      UpdateTimeSheets event, Emitter<LocalSheetsState> emit) {
    final state = this.state;
    final timesheet = event.timesheet;

    final int index = state.localTimeSheets
        .indexWhere((element) => element.startTime == timesheet.startTime);

    List<Timesheet> newList = List.from(state.localTimeSheets);
    newList[index] = timesheet;
    emit(LocalSheetsState(localTimeSheets: newList));
  }

  @override
  LocalSheetsState? fromJson(Map<String, dynamic> json) {
    return LocalSheetsState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(LocalSheetsState state) {
    return state.toMap();
  }
}
