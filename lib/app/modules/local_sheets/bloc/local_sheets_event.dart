part of 'local_sheets_bloc.dart';

@freezed
class LocalSheetsEvent with _$LocalSheetsEvent {
  const factory LocalSheetsEvent.started() = _Started;
  const factory LocalSheetsEvent.addProject({required Timesheet timesheet}) =
  AddTimeSheets;
  const factory LocalSheetsEvent.updateProject({required Timesheet timesheet}) =
  UpdateTimeSheets;
}