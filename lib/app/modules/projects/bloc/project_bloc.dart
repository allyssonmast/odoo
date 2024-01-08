import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../model/project.dart';

part 'project_event.dart';
part 'project_state.dart';
part 'project_bloc.freezed.dart';

@lazySingleton
class ProjectBloc extends HydratedBloc<ProjectEvent, ProjectState> {
  ProjectBloc() : super(const ProjectState()) {
    on<AddProject>(_onAddProject);
    on<UpdateProject>(_onUpdateProject);
  }
  void _onAddProject(AddProject event, Emitter<ProjectState> emit) {
    final state = this.state;
    emit(ProjectState(
      allProjects: List.from(state.allProjects)..add(event.project),
    ));
  }

  void _onUpdateProject(UpdateProject event, Emitter<ProjectState> emit) {}

  @override
  ProjectState? fromJson(Map<String, dynamic> json) {
    return ProjectState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(ProjectState state) {
    return state.toMap();
  }
}
