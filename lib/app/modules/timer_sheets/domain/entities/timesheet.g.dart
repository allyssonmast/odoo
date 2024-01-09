// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timesheet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimesheetImpl _$$TimesheetImplFromJson(Map<String, dynamic> json) =>
    _$TimesheetImpl(
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      description: json['description'] as String,
      favorite: json['favorite'] as bool,
      associatedProject: json['associatedProject'] as String,
      responsibleUser: json['responsibleUser'] as String,
      task: Task.fromJson(json['task'] as Map<String, dynamic>),
      isCountin: json['isCountin'] as bool,
      taskDuration: Duration(microseconds: json['taskDuration'] as int),
      associatedRecords: (json['associatedRecords'] as List<dynamic>)
          .map((e) => Records.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TimesheetImplToJson(_$TimesheetImpl instance) =>
    <String, dynamic>{
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'description': instance.description,
      'favorite': instance.favorite,
      'associatedProject': instance.associatedProject,
      'responsibleUser': instance.responsibleUser,
      'task': instance.task,
      'isCountin': instance.isCountin,
      'taskDuration': instance.taskDuration.inMicroseconds,
      'associatedRecords': instance.associatedRecords,
    };
