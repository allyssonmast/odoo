import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:odoo/app/config/auto_router/routes_imports.gr.dart';

@RoutePage()
class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        TimerSheetsPageRoute(),
        ProjectsPageRoute(),
        SettingsPageRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
            body: child,
            bottomNavigationBar: NavigationBar(
              selectedIndex: tabsRouter.activeIndex,
              onDestinationSelected: tabsRouter.setActiveIndex,
              destinations: const [
                NavigationDestination(
                    label: 'Timesheets',
                    icon: Icon(Icons.access_time_filled_outlined)),
                NavigationDestination(
                  label: 'Projects',
                  icon: Icon(Icons.folder_copy),
                ),
                NavigationDestination(
                    label: 'Settings', icon: Icon(Icons.settings_rounded)),
              ],
            ));
      },
    );
  }
}
