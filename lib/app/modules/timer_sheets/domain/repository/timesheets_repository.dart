import 'package:dartz/dartz.dart';
import 'package:odoo/app/modules/timer_sheets/domain/entities/timesheet.dart';

import '../../../../config/shered_widgets/erro/failure.dart';

abstract class TimeSheetRepository {
  Future<Either<Failure, List<Timesheet>>> getTimesheets();
  Future<Either<Failure, void>> setTimesheets(Timesheet timesheet);
}

