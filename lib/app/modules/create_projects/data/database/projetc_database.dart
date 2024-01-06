// project_repository.dart
import 'package:dartz/dartz.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../config/shered_widgets/erro/failure.dart';
import '../../domain/entities/project.dart';

@injectable
class ProjectDatabase {
  final HydratedStorage storage;

  ProjectDatabase(this.storage);

  static const String _key = 'project_data';

  Future<Either<Failure, bool>> addProject(List<Project> projects) async {
    try {
      await storage.write(_key, projects);
      return right(true);
    } catch (e) {
      return left(Failure(message: "Falha ao adicionar projeto: $e"));
    }
  }

  Future<Either<Failure, List<Project>>> getProjects() async {
    try {
      final List<Project>? projects = storage.read(_key);
      return right(projects ?? []);
    } catch (e) {
      return left(Failure( message: 'Falha ao obter projetos: $e'));
    }
  }
}
