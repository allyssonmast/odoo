import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:odoo/app/config/dependence_injection/injection.dart';
import 'package:odoo/app/modules/local_sheets/bloc/local_sheets_bloc.dart';
import 'package:odoo/app/modules/timer_sheets/domain/entities/timesheet.dart';

import '../../../../../config/auto_router/routes_imports.gr.dart';

class TimeSheetAdapter extends StatefulWidget {
  final Timesheet timeSheet;
  const TimeSheetAdapter({Key? key, required this.timeSheet}) : super(key: key);

  @override
  State<TimeSheetAdapter> createState() => _TimeSheetAdapterState();
}

class _TimeSheetAdapterState extends State<TimeSheetAdapter> {

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () => context.router.push(
          TaskDetailsPageRoute(
            timesheet: widget.timeSheet,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: 2,
                  color: Colors.amber,
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.timeSheet.associatedProject,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text('Responsible: ${widget.timeSheet.responsibleUser}'),
                      Text(
                          'Deadline: ${DateFormat.yMMMMd().format(widget.timeSheet.endTime)}')
                    ],
                  ),
                ),
                ActionChip.elevated(
                  onPressed: widget.timeSheet.associatedRecords.isEmpty
                      ? _startCounting
                      : null,
                  avatar: Icon(
                    widget.timeSheet.isCountin ? Icons.pause : Icons.play_arrow,
                  ),
                  label: Text(
                      (widget.timeSheet.taskDuration).toString().split('.')[0]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _startCounting() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!widget.timeSheet.isCountin) {
        timer.cancel();
      } else {
        var time = widget.timeSheet.taskDuration.inSeconds + 1;
        setState(() {});

        getIt<LocalSheetsBloc>().add(UpdateTimeSheets(
            timesheet: widget.timeSheet
                .copyWith(taskDuration: Duration(seconds: time))));
      }
    });
    getIt<LocalSheetsBloc>().add(UpdateTimeSheets(
        timesheet:
            widget.timeSheet.copyWith(isCountin: !widget.timeSheet.isCountin)));
  }
}
