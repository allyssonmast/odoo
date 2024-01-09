import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odoo/app/modules/task_details/view/timesheet/timesheet_card.dart';
import 'package:odoo/app/modules/timer_sheets/domain/entities/timesheet.dart';

import '../../../../config/dependence_injection/injection.dart';
import '../../../local_sheets/bloc/local_sheets_bloc.dart';
import 'completed_records.dart';

class TimeSheetDetails extends StatefulWidget {
  final Timesheet timesheet;
  const TimeSheetDetails({Key? key, required this.timesheet}) : super(key: key);

  @override
  State<TimeSheetDetails> createState() => _TimeSheetDetailsState();
}

class _TimeSheetDetailsState extends State<TimeSheetDetails> {
  late Timesheet timesheet;
  @override
  void initState() {
    super.initState();
    timesheet = widget.timesheet;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocListener<LocalSheetsBloc, LocalSheetsState>(
        bloc: getIt<LocalSheetsBloc>(),
        listener: (BuildContext context, LocalSheetsState state) {
          timesheet = getIt<LocalSheetsBloc>().state.localTimeSheets.firstWhere(
              (element) => element.startTime == widget.timesheet.startTime);
          setState(() {});
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TimeSheetCard(timesheet: timesheet),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Completed Records'),
              ),
              CompletedRecords(timesheet: timesheet)
            ],
          ),
        ),
      ),
    );
  }
}
