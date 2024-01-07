import 'package:flutter/material.dart';
import 'package:odoo/app/config/dependence_injection/injection.dart';
import 'package:odoo/app/modules/timer_sheets/presentation/bloc/timesheet_bloc.dart';

import '../../../../../config/shered_widgets/noitem/noitem.dart';

class EmptyOdooTimeSheets extends StatelessWidget {
  const EmptyOdooTimeSheets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NoItemWidget(
            icon: Center(
              child: Text(
                'odoo',
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
            title: 'You dont have any odoo timesheets',
            subTitle: 'Synchronize with odoo to get started',
          ),
          ElevatedButton(
            onPressed: () {
              getIt<TimesheetBloc>()
                  .add(const TimesheetEvent.featchTimeSheet());
            },
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Get Started'),
            ),
          )
        ],
      ),
    );
  }
}
