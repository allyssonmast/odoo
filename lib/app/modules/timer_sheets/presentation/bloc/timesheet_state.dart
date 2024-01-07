part of 'timesheet_bloc.dart';

@freezed
abstract class TimeSheetsState with _$TimeSheetsState {
  const factory TimeSheetsState.initial() = _Initial;
  const factory TimeSheetsState.loading() = _Loading;
  const factory TimeSheetsState.success(List<Timesheet> timeSheets) = _Success;
  const factory TimeSheetsState.error(String errorMessage) = _Error;
  const factory TimeSheetsState.empty() = _Empty;
}
