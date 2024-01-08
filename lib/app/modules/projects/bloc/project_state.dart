part of 'project_bloc.dart';

class ProjectState extends Equatable {
  final List<Project> allProjects;

  const ProjectState({this.allProjects = const <Project>[]});

  @override
  List<Object?> get props => [allProjects];

  Map<String, dynamic> toMap() {
    return {
      'allProjects': allProjects.map((project) => project.toJson()).toList(),
    };
  }

  factory ProjectState.fromMap(Map<String, dynamic> map) {
    return ProjectState(
      allProjects: List<Project>.from(
        map['allProjects']?.map((x) => Project.fromJson(x)) ?? const [],
      ),
    );
  }
}

final class ProjectInitial extends ProjectState {
  @override
  List<Object?> get props => [];
}

class ProjectStateLoaded extends ProjectState {
  final List<Project> task;

  const ProjectStateLoaded({this.task = const <Project>[]});

  @override
  List<Object?> get props => [];
}

class ProjectFailure extends ProjectState {
  final String errorMessage;

  const ProjectFailure({required this.errorMessage});

  List<Object?> get props => [errorMessage];

  @override
  String toString() => 'LoginFailure { error: $errorMessage }';
}
