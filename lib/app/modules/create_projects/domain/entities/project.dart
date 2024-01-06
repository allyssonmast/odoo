import 'task.dart';

import 'package:json_annotation/json_annotation.dart';
part 'project.g.dart';
@JsonSerializable()
class Project {
  String name;
  String color;
  bool isFavorite;
  List<Task> tasks;

  Project(this.name, this.color, this.isFavorite, this.tasks);

  factory Project.fromJson(Map<String, dynamic> json) => _$ProjectFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectToJson(this);
}