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

