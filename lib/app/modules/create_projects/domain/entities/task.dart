import '../../../timer_sheets/domain/entities/timesheet.dart';
import 'package:json_annotation/json_annotation.dart';
part 'task.g.dart';
@JsonSerializable()
class Task {
  String name;
  String description;
  String state;
  DateTime deadline;
  String responsible;
  List<Timesheet> timesheets;

  Task(this.name, this.description, this.state, this.deadline, this.responsible, this.timesheets);
  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  Map<String, dynamic> toJson() => _$TaskToJson(this);

}
