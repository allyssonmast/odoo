import '../../../timer_sheets/domain/entities/timesheet.dart';
import 'package:json_annotation/json_annotation.dart';
part 'task.g.dart';

@JsonSerializable()
class Task {
  String name;
  String description;
  TaskStatus status;
  DateTime deadline;
  String responsible;
  List<Timesheet> timesheets;

  Task(
      {required this.name,
      required this.description,
      required this.status,
      required this.deadline,
      required this.responsible,
      required this.timesheets});
  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  Map<String, dynamic> toJson() => _$TaskToJson(this);
}

enum TaskStatus {
  @JsonValue('In Progress')
  inProgress,
  @JsonValue('Completed')
  completed,
  @JsonValue('Pending')
  pending,
}
