part of 'timesheet_bloc.dart';

@freezed
class TimesheetEvent with _$TimesheetEvent {
  const factory TimesheetEvent.started() = _Started;
  const factory TimesheetEvent.featchTimeSheet() = _FeatchTimeSheets;
}