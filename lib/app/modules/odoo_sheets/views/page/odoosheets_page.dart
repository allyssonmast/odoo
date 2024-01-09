import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odoo/app/config/shered_widgets/erro/erro_widget.dart';
import 'package:odoo/app/modules/timer_sheets/presentation/bloc/timesheet_bloc.dart';
import 'package:odoo/app/modules/timer_sheets/presentation/views/widgets/timesheet_listview_widget.dart';

import '../widgets/empty_odoo.dart';

@RoutePage()
class OdooSheetsPage extends StatelessWidget {
  const OdooSheetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimesheetBloc, TimeSheetsState>(
        builder: (context, state) {
          return state.map(
            initial: (ini) => const EmptyOdooTimeSheets(),
            loading: (loading) =>
            const Center(child: CircularProgressIndicator()),
            success: (success) => TimeSheetListView(list: success.timeSheets),
            error: (error) => const FailureWidget(),
            empty: (empty) => const EmptyOdooTimeSheets(),
          );
        });
  }
}
