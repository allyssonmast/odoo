// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Task _$TaskFromJson(Map<String, dynamic> json) => Task(
      json['name'] as String,
      json['description'] as String,
      json['state'] as String,
      DateTime.parse(json['deadline'] as String),
      json['responsible'] as String,
      (json['timesheets'] as List<dynamic>)
          .map((e) => Timesheet.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'state': instance.state,
      'deadline': instance.deadline.toIso8601String(),
      'responsible': instance.responsible,
      'timesheets': instance.timesheets,
    };
