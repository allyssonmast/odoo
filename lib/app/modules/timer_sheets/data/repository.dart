import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:odoo/app/config/api/odoo_api.dart';
import 'package:odoo/app/config/shered_widgets/erro/failure.dart';
import 'package:odoo/app/modules/timer_sheets/domain/entities/timesheet.dart';
import 'package:odoo/app/modules/timer_sheets/domain/repository/timesheets_repository.dart';

import '../../create_projects/models/task.dart' as task;
import '../domain/entities/invoice.dart';

@Injectable(as: TimeSheetRepository)
class TimeSheetRepositoryImp implements TimeSheetRepository {
  final OdooApi api;

  TimeSheetRepositoryImp(this.api);

  @override
  Future<Either<Failure, List<Timesheet>>> getTimesheets() async {
    try {
      var response = await api.getTimeSheets();
      return right(response.body ?? []);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> setTimesheets(Timesheet timesheet) {
    throw UnimplementedError();
  }
}

List<Timesheet> fakeTimeSheets = List.generate(5, (index) {
  return Timesheet(
    isCountin: false,
    startTime: DateTime.now().subtract(Duration(days: index)),
    endTime: DateTime.now(),
    description: 'Description ${index + 1}',
    associatedProject: 'Project ${index + 1}',
    responsibleUser: 'User ${index + 1}',
    task: task.Task(
      name: 'Task ${index + 1}',
      description: 'Task Description ${index + 1}',
      status: task.TaskStatus.completed,
      deadline: DateTime.now().add(Duration(days: index + 1)),
      responsible: 'User ${index + 1}',
      timesheets: [],
    ),
    taskDuration: const Duration(hours: 2),
    associatedRecords: [
      Records(
        invoiceNumber: 'INV${index + 1}',
        amount: 100.0,
        duration: const Duration(seconds: 0),
        issuedDate: DateTime.now().subtract(Duration(days: index)),
      ),
    ],
    favorite: index % 2 == 0 ? false : true,
  );
});
