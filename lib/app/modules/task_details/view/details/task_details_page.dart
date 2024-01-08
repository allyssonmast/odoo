import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Icon(Icons.edit),
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
