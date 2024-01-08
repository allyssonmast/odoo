import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odoo/app/modules/local_sheets/bloc/local_sheets_bloc.dart';

import '../../../../config/shered_widgets/noitem/noitem.dart';
import '../../../timer_sheets/presentation/views/widgets/timesheet_listview_widget.dart';

@RoutePage()
class LocalSheetsPage extends StatelessWidget {
  const LocalSheetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LocalSheetsBloc, LocalSheetsState>(
          builder: (context, state) {
        return state.localTimeSheets.isNotEmpty
            ? TimeSheetListView(list: state.localTimeSheets)
            : const NoItemWidget(
                icon: Icon(
                  Icons.access_time,
                  size: 100,
                ),
                title: 'You dont have any local timesheets',
                subTitle: 'Create a timer to begin tracking time',
              );
      }),
    );
  }
}
