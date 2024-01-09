import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:odoo/app/config/dependence_injection/injection.dart';
import 'package:odoo/app/modules/local_sheets/bloc/local_sheets_bloc.dart';
import 'package:odoo/app/modules/task_details/view/details/details.dart';
import 'package:odoo/app/modules/task_details/view/timesheet/timesheet.dart';
import 'package:odoo/app/modules/timer_sheets/domain/entities/timesheet.dart';

@RoutePage()
class TaskDetailsPage extends StatelessWidget {
  final Timesheet timesheet;
  const TaskDetailsPage({Key? key, required this.timesheet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tabsList = [
      const Tab(text: 'Timesheets'),
      const Tab(text: 'Details'),
    ];
    return DefaultTabController(
      length: tabsList.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(timesheet.associatedProject),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: IconButton(
                  onPressed: () {
                    getIt<LocalSheetsBloc>()
                        .add(DeleteTimeSheets(timesheet: timesheet));
                    //Navigator.pop(context);
                  },
                  icon: const Icon(Icons.delete)),
            )
          ],
          bottom: TabBar(
            tabs: tabsList,
          ),
        ),
        body: TabBarView(
          children: [
            TimeSheetDetails(
              timesheet: timesheet,
            ),
            DetailsTimesheet(
              timesheet: timesheet,
            )
          ],
        ),
      ),
    );
  }
}
