import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:odoo/app/modules/timer_sheets/domain/entities/timesheet.dart';

class TimeSheetAdapter extends StatefulWidget {
  final Timesheet timeSheet;
  const TimeSheetAdapter({Key? key, required this.timeSheet}) : super(key: key);

  @override
  State<TimeSheetAdapter> createState() => _TimeSheetAdapterState();
}

class _TimeSheetAdapterState extends State<TimeSheetAdapter> {
  late bool isCounting;
  late int seconds;

  @override
  void initState() {
    super.initState();
    isCounting = false;
    seconds = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
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
                onPressed: () {
                  setState(() {
                    if (isCounting) {
                      isCounting = false;
                    } else {
                      isCounting = true;
                      _startCounting();
                    }
                  });
                },
                avatar: Icon(
                  isCounting ? Icons.pause : Icons.play_arrow,
                ),
                label: Text(
                    (Duration(seconds: seconds) + widget.timeSheet.taskDuration)
                        .toString()
                        .split('.')[0]),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _startCounting() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!isCounting) {
        timer.cancel();
      } else {
        setState(() {
          seconds++;
        });
      }
    });
  }
}
