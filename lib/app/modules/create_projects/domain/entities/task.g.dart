// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Task _$TaskFromJson(Map<String, dynamic> json) => Task(
      name: json['name'] as String,
      description: json['description'] as String,
      status: $enumDecode(_$TaskStatusEnumMap, json['status']),
      deadline: DateTime.parse(json['deadline'] as String),
      responsible: json['responsible'] as String,
      timesheets: (json['timesheets'] as List<dynamic>)
          .map((e) => Timesheet.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'status': _$TaskStatusEnumMap[instance.status]!,
      'deadline': instance.deadline.toIso8601String(),
      'responsible': instance.responsible,
      'timesheets': instance.timesheets,
    };

const _$TaskStatusEnumMap = {
  TaskStatus.inProgress: 'In Progress',
  TaskStatus.completed: 'Completed',
  TaskStatus.pending: 'Pending',
};
