import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:odoo/app/modules/timer_sheets/domain/repository/timesheets_repository.dart';

import '../../../../config/shered_widgets/erro/failure.dart';
import '../entities/timesheet.dart';

abstract class GetTimeSheetUsecase {
  Future<Either<Failure, List<Timesheet>>> getTimesheets();
}

@Injectable(as: GetTimeSheetUsecase)
class GetTimeSheetUsecaseImp implements GetTimeSheetUsecase {
  final TimeSheetRepository repository;

  GetTimeSheetUsecaseImp(this.repository);
  @override
  Future<Either<Failure, List<Timesheet>>> getTimesheets() async {
    return await repository.getTimesheets();
  }
}
