import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../create_projects/domain/entities/task.dart';
import 'comment.dart';
import 'invoice.dart';

part 'timesheet.freezed.dart';
part 'timesheet.g.dart';

@freezed
class Timesheet with _$Timesheet {
  const factory Timesheet({
    required DateTime startTime,
    required DateTime endTime,
    required String description,
    required bool favorite,
    required String associatedProject,
    required String responsibleUser,
    required Task task,
    required bool isCountin,
    required Duration taskDuration,
    required List<String> tags,
    required List<Comment> comments,
    required List<Records> associatedRecords,
  }) = _Timesheet;

  factory Timesheet.fromJson(Map<String, dynamic> json) =>
      _$TimesheetFromJson(json);
}
