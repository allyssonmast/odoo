import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/project.dart';
import '../../domain/repository/project_repository.dart';
part 'project_event.dart';
part 'project_state.dart';

@injectable
class ProjectBloc extends HydratedBloc<ProjectEvent, ProjectState> {
  final ProjectRepository repository;
  ProjectBloc(this.repository) : super(ProjectInitial()) {
    on<ProjectFetch>((event, emit) async {
      emit(ProjectStateLoaded(repository.projects));
    });
    on<ProjectAdd>((event, emit) async {
      //await fakeLoading();
      var project = await repository([event.task]);
      project.fold(
        (l) => emit(ProjectFailure(errorMessage: l.message)),
        (r) => emit(ProjectStateLoaded(r)),
      );
    });
  }

  @override
  ProjectState? fromJson(Map<String, dynamic> json) {
    if (json['data'] != null && (json['data'] as List<dynamic>).isNotEmpty) {
      return ProjectStateLoaded((json['data'] as List<dynamic>)
          .map((e) => Project.fromJson(e))
          .toList());
    }
    return ProjectInitial();
  }

  @override
  Map<String, dynamic>? toJson(ProjectState state) {
    if (state is ProjectStateLoaded) {
      return {'data': state.task.map((e) => e.toJson()).toList()};
    }
    return {'data': []};
  }

  var listColors = ['red', 'green', 'yellow', 'blue'];
}
