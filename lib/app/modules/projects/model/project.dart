
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../create_projects/domain/entities/task.dart';


part 'project.freezed.dart';
part 'project.g.dart';

@freezed
class Project with _$Project {
  const factory Project({
    required int id,
    required String name,
    required String color,
    required bool isFavorite,
    required bool isCompleted,
    required List<Task> tasks,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) => _$ProjectFromJson(json);
}
