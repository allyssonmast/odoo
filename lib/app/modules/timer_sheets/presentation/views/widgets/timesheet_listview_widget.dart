import 'package:flutter/material.dart';
import 'package:odoo/app/modules/timer_sheets/presentation/views/widgets/timesheet_adapter.dart';

import '../../../domain/entities/timesheet.dart';

class TimeSheetListView extends StatelessWidget {
  final List<Timesheet> list;
  const TimeSheetListView({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: list.length,
      itemBuilder: (_, index) {
        return TimeSheetAdapter(timeSheet: list[index]);
      },
    );
  }
}
