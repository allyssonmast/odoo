part of 'local_sheets_bloc.dart';

class LocalSheetsState extends Equatable {
  final List<Timesheet> localTimeSheets;

  const LocalSheetsState({this.localTimeSheets = const <Timesheet>[]});
  @override
  List<Object?> get props => [localTimeSheets];

  Map<String, dynamic> toMap() {
    return {
      'localTimesheets':
          localTimeSheets.map((project) => project.toJson()).toList(),
    };
  }

  factory LocalSheetsState.fromMap(Map<String, dynamic> map) {
    return LocalSheetsState(
      localTimeSheets: List<Timesheet>.from(
        map['localTimesheets']?.map((x) => Timesheet.fromJson(x))?? const [],
      ),
    );
  }
}
