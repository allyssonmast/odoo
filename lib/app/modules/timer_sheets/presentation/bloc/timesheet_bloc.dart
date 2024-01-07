import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:odoo/app/modules/timer_sheets/domain/entities/timesheet.dart';

import '../../data/repository.dart';
import '../../domain/usecases/gettimesheet_usecase.dart';

part 'timesheet_event.dart';
part 'timesheet_state.dart';
part 'timesheet_bloc.freezed.dart';

@lazySingleton
class TimesheetBloc extends Bloc<TimesheetEvent, TimeSheetsState> {
  final GetTimeSheetUsecase getTimeSheetUsecase;
  TimesheetBloc(this.getTimeSheetUsecase) : super(const _Initial()) {
    on<_Started>(onTimeSheetFetched);
    on<_FeatchTimeSheets>(onTimeSheetFetchedMock);
  }
  Future onTimeSheetFetched(
      TimesheetEvent event, Emitter<TimeSheetsState> emit) async {
    emit(const _Loading());
    await Future.delayed(const Duration(seconds: 2));
    var result = await getTimeSheetUsecase.getTimesheets();
    result.fold(
      (l) => emit(_Error(l.message)),
      (r) {
        if (r.isNotEmpty) {
          return emit(_Success(r));
        }
        return emit(const _Empty());
      },
    );
  }

  Future onTimeSheetFetchedMock(
      TimesheetEvent event, Emitter<TimeSheetsState> emit) async {
    emit(const _Loading());
    await Future.delayed(const Duration(seconds: 2));
    emit(_Success(fakeTimeSheets));
  }
}
