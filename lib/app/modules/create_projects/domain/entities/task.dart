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
List<Task> fakeTasksList() {
  return [
    Task(
      name: 'Task 1',
      description: 'Description for Task 1',
      status: TaskStatus.inProgress,
      deadline: DateTime.now().add(const Duration(days: 5)),
      responsible: 'John Doe',
      timesheets: [],
    ),
    Task(
      name: 'Task 2',
      description: 'Description for Task 2',
      status: TaskStatus.completed,
      deadline: DateTime.now().add(const Duration(days: 10)),
      responsible: 'Jane Smith',
      timesheets: [],
    ),
    Task(
      name: 'Task 3',
      description: 'Description for Task 3',
      status: TaskStatus.pending,
      deadline: DateTime.now().add(const Duration(days: 15)),
      responsible: 'Bob Johnson',
      timesheets: [],
    ),
    // Add more tasks as needed
  ];
}