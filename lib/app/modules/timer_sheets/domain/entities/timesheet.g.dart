// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timesheet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Timesheet _$TimesheetFromJson(Map<String, dynamic> json) => Timesheet(
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      description: json['description'] as String,
      associatedProject: json['associatedProject'] as String,
      responsibleUser: json['responsibleUser'] as String,
      task: Task.fromJson(json['task'] as Map<String, dynamic>),
      taskDuration: Duration(microseconds: json['taskDuration'] as int),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      comments: (json['comments'] as List<dynamic>)
          .map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
      associatedInvoices: (json['associatedInvoices'] as List<dynamic>)
          .map((e) => Invoice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TimesheetToJson(Timesheet instance) => <String, dynamic>{
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'description': instance.description,
      'associatedProject': instance.associatedProject,
      'responsibleUser': instance.responsibleUser,
      'task': instance.task,
      'taskDuration': instance.taskDuration.inMicroseconds,
      'tags': instance.tags,
      'comments': instance.comments,
      'associatedInvoices': instance.associatedInvoices,
    };
