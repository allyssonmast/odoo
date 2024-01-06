import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:odoo/app/config/shered_widgets/erro/failure.dart';
import 'package:odoo/app/modules/create_projects/data/database/projetc_database.dart';
import 'package:odoo/app/modules/create_projects/domain/entities/project.dart';
import 'package:odoo/app/modules/create_projects/domain/repository/create_project_repository.dart';

@Injectable(as: CreateProjectRepository)
class CreateProjectRepositoryImp implements CreateProjectRepository {
  final ProjectDatabase database;

  CreateProjectRepositoryImp(this.database);
  @override
  Future<Either<Failure, bool>> call(List<Project> project)async {
    return await database.addProject(project);
  }
}
