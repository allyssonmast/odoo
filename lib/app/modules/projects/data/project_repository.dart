// ignore_for_file: depend_on_referenced_packages

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:odoo/app/config/shered_widgets/erro/failure.dart';
import 'package:odoo/app/modules/projects/domain/entities/project.dart';

import '../domain/repository/project_repository.dart';

@Injectable(as: ProjectRepository)
class ProjectRepositoryImp implements ProjectRepository {
  @override
  List<Project> projects = [];

  @override
  Future<Either<Failure, List<Project>>> call(List<Project> projects) async {
    try {
      return right(projects);
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }
}
