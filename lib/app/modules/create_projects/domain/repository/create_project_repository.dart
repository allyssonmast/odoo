import 'package:dartz/dartz.dart';
import 'package:odoo/app/modules/create_projects/domain/entities/project.dart';

import '../../../../config/shered_widgets/erro/failure.dart';

abstract class CreateProjectRepository {
  Future<Either<Failure, bool>> call(List<Project> project);
}
