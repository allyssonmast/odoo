import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odoo/app/config/auto_router/routes_imports.gr.dart';
import 'package:odoo/app/config/dependence_injection/injection.dart';
import 'package:odoo/app/modules/local_sheets/bloc/local_sheets_bloc.dart';
import 'package:odoo/app/modules/timer_sheets/presentation/bloc/timesheet_bloc.dart';

import '../widgets/center_icon.dart';

@RoutePage()
class TimerSheetsPage extends StatefulWidget {
  const TimerSheetsPage({Key? key}) : super(key: key);

  @override
  State<TimerSheetsPage> createState() => _TimerSheetsPageState();
}

class _TimerSheetsPageState extends State<TimerSheetsPage> {
  var listTab = ['Favorites', 'Odoo', 'Local'];
  @override
  Widget build(BuildContext context) {
    var themeContext = Theme.of(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider<TimesheetBloc>(
            create: (_) =>
                getIt<TimesheetBloc>()..add(const TimesheetEvent.started())),
        BlocProvider<LocalSheetsBloc>(create: (_) => getIt<LocalSheetsBloc>()),
      ],
      child: BlocBuilder<TimesheetBloc, TimeSheetsState>(
          builder: (context, state) {
        return AutoTabsRouter.tabBar(
          routes: const [
            FavoritiesSheetsPageRoute(),
            OdooSheetsPageRoute(),
            LocalSheetsPageRoute(),
          ],
          builder: (context, child, controller) {
            return Scaffold(
              appBar: AppBar(
                title: Text(
                  'Timesheets',
                  style: themeContext.textTheme.headlineLarge,
                ),
                actions: [
                  CenterWidget(
                    onTap: () {
                      context.router.push(const CreateTimerPageRoute());
                    },
                    child: const Icon(Icons.add),
                  ),
                  CenterWidget(
                    onTap: () {},
                    child: const Icon(Icons.sort),
                  ),
                ],
                bottom: TabBar(
                  controller: controller,
                  tabs: const [
                    Tab(text: 'Favorities'),
                    Tab(text: 'Odoo'),
                    Tab(text: 'Local'),
                  ],
                ),
              ),
              body: child,
            );
          },
        );
      }),
    );
  }
}
