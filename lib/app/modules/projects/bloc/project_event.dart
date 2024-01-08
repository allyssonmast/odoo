part of 'project_bloc.dart';

@freezed
class ProjectEvent with _$ProjectEvent {
  const factory ProjectEvent.fetch() = ProjectFetch;
  const factory ProjectEvent.addProject({required Project project}) =
      AddProject;
  const factory ProjectEvent.updateProject({required Project project}) =
      UpdateProject;
}
