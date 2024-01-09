import 'package:flutter/material.dart';
import 'package:odoo/app/config/dependence_injection/injection.dart';
import 'package:odoo/app/modules/local_sheets/bloc/local_sheets_bloc.dart';
import 'package:odoo/app/modules/task_details/view/timesheet/timerCustomer.dart';
import 'package:odoo/app/modules/timer_sheets/domain/entities/timesheet.dart';

class CompletedRecords extends StatelessWidget {
  final Timesheet timesheet;
  const CompletedRecords({Key? key, required this.timesheet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var timeSheet = getIt<LocalSheetsBloc>()
        .state
        .localTimeSheets
        .firstWhere((element) => element.startTime == timesheet.startTime);
    return timeSheet.associatedRecords.isNotEmpty
        ? ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: timeSheet.associatedRecords.length,
            itemBuilder: (_, index) {
              var record = timeSheet.associatedRecords[index];
              return ListTile(
                leading: const Icon(Icons.check_circle),
                title: TimeCustomer(
                  time: record.issuedDate,
                ),
                trailing: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(record.duration.toString().split('.')[0]),
                  ),
                ),
              );
            })
        : const Padding(
            padding: EdgeInsets.only(top: 34.0),
            child: Center(
              child: Text('No Records'),
            ),
          );
  }
}
