import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:odoo/app/modules/timer_sheets/domain/entities/timesheet.dart';

import 'details_adapter.dart';

class DetailsTimesheet extends StatelessWidget {
  final Timesheet timesheet;
  const DetailsTimesheet({Key? key, required this.timesheet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var labelList = ['Project', 'Deadline', 'Assigned'];
    var subTitleList = [
      timesheet.associatedProject,
      DateFormat('dd/MM/yyyy').format(timesheet.endTime),
      timesheet.responsibleUser
    ];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(
                  itemCount: labelList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) {
                    return DetailsAdapter(
                      label: labelList[index],
                      subtitle: subTitleList[index],
                    );
                  }),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Text(timesheet.task.description)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
