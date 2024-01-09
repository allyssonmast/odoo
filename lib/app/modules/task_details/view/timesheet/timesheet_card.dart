import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:odoo/app/config/dependence_injection/injection.dart';
import 'package:odoo/app/modules/local_sheets/bloc/local_sheets_bloc.dart';
import 'package:odoo/app/modules/task_details/view/timesheet/timerCustomer.dart';
import 'package:odoo/app/modules/timer_sheets/domain/entities/invoice.dart';
import 'package:odoo/app/modules/timer_sheets/domain/entities/timesheet.dart';

class TimeSheetCard extends StatefulWidget {
  final Timesheet timesheet;
  const TimeSheetCard({Key? key, required this.timesheet}) : super(key: key);

  @override
  State<TimeSheetCard> createState() => _TimeSheetCardState();
}

class _TimeSheetCardState extends State<TimeSheetCard> {
  late Timesheet timesheet;

  @override
  void initState() {
    super.initState();
    timesheet = widget.timesheet;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    timesheet = getIt<LocalSheetsBloc>().state.localTimeSheets.firstWhere(
        (element) => element.startTime == widget.timesheet.startTime);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                TimeCustomer(time: timesheet.startTime),
                const Spacer(),
                if (timesheet.associatedRecords.isNotEmpty)
                  const ActionChip.elevated(label: Text('Completed'))
              ],
            ),
            Row(
              children: [
                Text(
                  (timesheet.taskDuration).toString().split('.')[0],
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const Spacer(),
                IconButton(
                    onPressed: timesheet.associatedRecords.isEmpty
                        ? () {
                            var timesheett = timesheet.copyWith(
                              isCountin: false,
                              associatedRecords: [
                                ...timesheet.associatedRecords,
                                Records(
                                  invoiceNumber: DateFormat('yyyyMMdd')
                                      .format(DateTime.now()),
                                  issuedDate: DateTime.now(),
                                  duration: timesheet.taskDuration,
                                  amount: 0,
                                ),
                              ],
                            );
                            getIt<LocalSheetsBloc>()
                                .add(UpdateTimeSheets(timesheet: timesheett));
                          }
                        : null,
                    icon: const Icon(
                      Icons.stop,
                      size: 50,
                    )),
                IconButton(
                    onPressed: timesheet.associatedRecords.isEmpty
                        ? _startCounting
                        : null,
                    icon: Icon(
                        timesheet.isCountin ? Icons.pause : Icons.play_arrow,
                        size: 50)),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Divider(height: 3),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(children: [
                  const Text('Description'),
                  const Spacer(),
                  IconButton(
                      onPressed: () {
                        var newTimesheet =
                            timesheet.copyWith(favorite: !timesheet.favorite);
                        getIt<LocalSheetsBloc>()
                            .add(UpdateTimeSheets(timesheet: newTimesheet));
                      },
                      icon: Icon(
                          timesheet.favorite ? Icons.star : Icons.star_border))
                ])),
            Text(timesheet.description)
          ],
        ),
      ),
    );
  }

  void _startCounting() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!timesheet.isCountin) {
        timer.cancel();
      } else {
        var time = timesheet.taskDuration.inSeconds + 1;
        setState(() {});
        getIt<LocalSheetsBloc>().add(UpdateTimeSheets(
            timesheet:
                timesheet.copyWith(taskDuration: Duration(seconds: time))));
      }
    });
    getIt<LocalSheetsBloc>().add(UpdateTimeSheets(
        timesheet: timesheet.copyWith(isCountin: !timesheet.isCountin)));
  }
}
