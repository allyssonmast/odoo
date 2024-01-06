// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timesheet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Timesheet _$TimesheetFromJson(Map<String, dynamic> json) => Timesheet(
      Task.fromJson(json['task'] as Map<String, dynamic>),
      json['description'] as String,
      json['isFavorite'] as bool,
      DateTime.parse(json['date'] as String),
      json['hoursRecorded'] as int,
    );

Map<String, dynamic> _$TimesheetToJson(Timesheet instance) => <String, dynamic>{
      'task': instance.task,
      'description': instance.description,
      'isFavorite': instance.isFavorite,
      'date': instance.date.toIso8601String(),
      'hoursRecorded': instance.hoursRecorded,
    };
