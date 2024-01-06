import 'package:dartz/dartz.dart';
import 'package:odoo/app/modules/create_projects/domain/repository/create_project_repository.dart';

import '../../../../config/shered_widgets/erro/failure.dart';
import '../entities/project.dart';
import 'package:injectable/injectable.dart';

abstract class CreateProjectUseCase {
  Future<Either<Failure, void>> call(List<Project> project);
}

@Injectable(as: CreateProjectUseCase)
class CreateProjectUseCaseImp implements CreateProjectUseCase {
  final CreateProjectRepository repository;

  CreateProjectUseCaseImp(this.repository);

  @override
  Future<Either<Failure, void>> call(List<Project> project) async {
    return await repository(project);
  }
}
