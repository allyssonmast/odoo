import 'package:dartz/dartz.dart';

import '../../../../config/shered_widgets/erro/failure.dart';
import '../entities/project.dart';

abstract class ProjectRepository {
  List<Project> projects = [];
  Future<Either<Failure, List<Project>>> call(List<Project> project);
}