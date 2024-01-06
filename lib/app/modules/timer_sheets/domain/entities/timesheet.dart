import '../../../create_projects/domain/entities/task.dart';
import 'package:json_annotation/json_annotation.dart';
part 'timesheet.g.dart';

@JsonSerializable()
class Timesheet {
  Task task;
  String description;
  bool isFavorite;
  DateTime date;
  int hoursRecorded;

  Timesheet(this.task, this.description, this.isFavorite, this.date,
      this.hoursRecorded);
  factory Timesheet.fromJson(Map<String, dynamic> json) =>
      _$TimesheetFromJson(json);

  Map<String, dynamic> toJson() => _$TimesheetToJson(this);
}
