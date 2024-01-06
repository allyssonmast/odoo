// create_projects_cubit.dart
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/project.dart';
import '../../domain/usecases/createproject_usecase.dart';

@injectable
class CreateProjectsCubit extends Cubit<CreateProjectsState> {
  final CreateProjectUseCase createProjectUseCase;

  CreateProjectsCubit(this.createProjectUseCase)
      : super(CreateProjectsInitial());

  void createProject(String projectName, String color, bool isFavorite) {
    final project = Project(projectName, color, isFavorite, []);

    createProjectUseCase([project]).then((result) {
      result.fold(
        (failure) => emit(CreateProjectsError(failure.message)),
        (success) => emit(CreateProjectsSuccess()),
      );
    });
  }
  var listColors=['Vermelho','Verde'];
}

abstract class CreateProjectsState {}

class CreateProjectsInitial extends CreateProjectsState {}

class CreateProjectsSuccess extends CreateProjectsState {}

class CreateProjectsError extends CreateProjectsState {
  final String errorMessage;

  CreateProjectsError(this.errorMessage);
}
