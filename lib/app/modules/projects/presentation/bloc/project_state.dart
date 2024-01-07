part of 'project_bloc.dart';

sealed class ProjectState {}

final class ProjectInitial extends ProjectState {}

final class ProjectStateLoaded extends ProjectState {
  final List<Project> task;

  ProjectStateLoaded(this.task);
}

class ProjectFailure extends ProjectState {
  final String errorMessage;

  ProjectFailure({required this.errorMessage});

  List<Object?> get props => [errorMessage];

  @override
  String toString() => 'LoginFailure { error: $errorMessage }';
}
