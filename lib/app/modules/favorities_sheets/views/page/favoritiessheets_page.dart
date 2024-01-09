import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:odoo/app/config/dependence_injection/injection.dart';
import 'package:odoo/app/config/shered_widgets/noitem/noitem.dart';
import 'package:odoo/app/modules/local_sheets/bloc/local_sheets_bloc.dart';

import '../../../timer_sheets/presentation/views/widgets/timesheet_listview_widget.dart';

@RoutePage()
class FavoritiesSheetsPage extends StatelessWidget {
  const FavoritiesSheetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var timeSheet = getIt<LocalSheetsBloc>()
        .state
        .localTimeSheets
        .where((element) => element.favorite)
        .toList();

    return Scaffold(
      body: timeSheet.isNotEmpty
          ? TimeSheetListView(list: timeSheet)
          : const NoItemWidget(
              icon: Icon(
                Icons.star_purple500_outlined,
                size: 100,
              ),
              title: 'No favorited timers yet',
              subTitle:
                  'You can mark a timer as favorite either on the timer creation page or within an existing timer',
            ),
    );
  }
}
