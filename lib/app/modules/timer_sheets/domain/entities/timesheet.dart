import '../../../create_projects/domain/entities/task.dart';
import 'package:json_annotation/json_annotation.dart';

import 'comment.dart';
import 'invoice.dart';

part 'timesheet.g.dart';

@JsonSerializable()
class Timesheet {
  DateTime startTime;
  DateTime endTime;
  String description;
  String associatedProject;
  String responsibleUser;
  Task task;
  Duration taskDuration;
  List<String> tags;
  List<Comment> comments;
  List<Invoice> associatedInvoices;

  Timesheet({
    required this.startTime,
    required this.endTime,
    required this.description,
    required this.associatedProject,
    required this.responsibleUser,
    required this.task,
    required this.taskDuration,
    required this.tags,
    required this.comments,
    required this.associatedInvoices,
  });

  factory Timesheet.fromJson(Map<String, dynamic> json) =>
      _$TimesheetFromJson(json);

  Map<String, dynamic> toJson() => _$TimesheetToJson(this);
}

