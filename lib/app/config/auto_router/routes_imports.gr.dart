// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:odoo/app/modules/dashboard/presentation/views/dashboard_view.dart'
    as _i1;
import 'package:odoo/app/modules/projects/presentation/views/page/projects_page.dart'
    as _i2;
import 'package:odoo/app/modules/settings/presentation/views/page/settings_page.dart'
    as _i3;
import 'package:odoo/app/modules/timer_sheets/presentation/views/page/timer_sheets_page.dart'
    as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    DashboardPageRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DashboardPage(),
      );
    },
    ProjectsPageRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ProjectsPage(),
      );
    },
    SettingsPageRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SettingsPage(),
      );
    },
    TimerSheetsPageRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.TimerSheetsPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.DashboardPage]
class DashboardPageRoute extends _i5.PageRouteInfo<void> {
  const DashboardPageRoute({List<_i5.PageRouteInfo>? children})
      : super(
          DashboardPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardPageRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ProjectsPage]
class ProjectsPageRoute extends _i5.PageRouteInfo<void> {
  const ProjectsPageRoute({List<_i5.PageRouteInfo>? children})
      : super(
          ProjectsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProjectsPageRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SettingsPage]
class SettingsPageRoute extends _i5.PageRouteInfo<void> {
  const SettingsPageRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SettingsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsPageRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.TimerSheetsPage]
class TimerSheetsPageRoute extends _i5.PageRouteInfo<void> {
  const TimerSheetsPageRoute({List<_i5.PageRouteInfo>? children})
      : super(
          TimerSheetsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'TimerSheetsPageRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
