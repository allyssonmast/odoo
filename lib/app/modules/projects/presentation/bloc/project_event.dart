part of 'project_bloc.dart';
sealed class ProjectEvent {}

final class ProjectFetch extends ProjectEvent {}

final class ProjectAdd extends ProjectEvent {
  final Project task;
  ProjectAdd(this.task);
}
