// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;
import 'package:odoo/app/modules/create_projects/views/page/create_timer_page.dart'
    as _i1;
import 'package:odoo/app/modules/create_timer/views/page/create_timer_page.dart'
    as _i2;
import 'package:odoo/app/modules/dashboard/views/dashboard_view.dart' as _i3;
import 'package:odoo/app/modules/favorities_sheets/views/page/favoritiessheets_page.dart'
    as _i4;
import 'package:odoo/app/modules/local_sheets/views/page/localsheets_page.dart'
    as _i5;
import 'package:odoo/app/modules/odoo_sheets/views/page/odoosheets_page.dart'
    as _i6;
import 'package:odoo/app/modules/projects/views/page/projects_page.dart' as _i7;
import 'package:odoo/app/modules/settings/views/page/settings_page.dart' as _i8;
import 'package:odoo/app/modules/task_details/view/details/task_details_page.dart'
    as _i9;
import 'package:odoo/app/modules/timer_sheets/domain/entities/timesheet.dart'
    as _i13;
import 'package:odoo/app/modules/timer_sheets/presentation/views/page/timer_sheets_page.dart'
    as _i10;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    CreateProjectsPageRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CreateProjectsPage(),
      );
    },
    CreateTimerPageRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CreateTimerPage(),
      );
    },
    DashboardPageRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DashboardPage(),
      );
    },
    FavoritiesSheetsPageRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.FavoritiesSheetsPage(),
      );
    },
    LocalSheetsPageRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LocalSheetsPage(),
      );
    },
    OdooSheetsPageRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.OdooSheetsPage(),
      );
    },
    ProjectsPageRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ProjectsPage(),
      );
    },
    SettingsPageRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SettingsPage(),
      );
    },
    TaskDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<TaskDetailsPageRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.TaskDetailsPage(
          key: args.key,
          timesheet: args.timesheet,
        ),
      );
    },
    TimerSheetsPageRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.TimerSheetsPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CreateProjectsPage]
class CreateProjectsPageRoute extends _i11.PageRouteInfo<void> {
  const CreateProjectsPageRoute({List<_i11.PageRouteInfo>? children})
      : super(
          CreateProjectsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateProjectsPageRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CreateTimerPage]
class CreateTimerPageRoute extends _i11.PageRouteInfo<void> {
  const CreateTimerPageRoute({List<_i11.PageRouteInfo>? children})
      : super(
          CreateTimerPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateTimerPageRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DashboardPage]
class DashboardPageRoute extends _i11.PageRouteInfo<void> {
  const DashboardPageRoute({List<_i11.PageRouteInfo>? children})
      : super(
          DashboardPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardPageRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.FavoritiesSheetsPage]
class FavoritiesSheetsPageRoute extends _i11.PageRouteInfo<void> {
  const FavoritiesSheetsPageRoute({List<_i11.PageRouteInfo>? children})
      : super(
          FavoritiesSheetsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoritiesSheetsPageRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LocalSheetsPage]
class LocalSheetsPageRoute extends _i11.PageRouteInfo<void> {
  const LocalSheetsPageRoute({List<_i11.PageRouteInfo>? children})
      : super(
          LocalSheetsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'LocalSheetsPageRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i6.OdooSheetsPage]
class OdooSheetsPageRoute extends _i11.PageRouteInfo<void> {
  const OdooSheetsPageRoute({List<_i11.PageRouteInfo>? children})
      : super(
          OdooSheetsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'OdooSheetsPageRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ProjectsPage]
class ProjectsPageRoute extends _i11.PageRouteInfo<void> {
  const ProjectsPageRoute({List<_i11.PageRouteInfo>? children})
      : super(
          ProjectsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProjectsPageRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SettingsPage]
class SettingsPageRoute extends _i11.PageRouteInfo<void> {
  const SettingsPageRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SettingsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsPageRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i9.TaskDetailsPage]
class TaskDetailsPageRoute
    extends _i11.PageRouteInfo<TaskDetailsPageRouteArgs> {
  TaskDetailsPageRoute({
    _i12.Key? key,
    required _i13.Timesheet timesheet,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          TaskDetailsPageRoute.name,
          args: TaskDetailsPageRouteArgs(
            key: key,
            timesheet: timesheet,
          ),
          initialChildren: children,
        );

  static const String name = 'TaskDetailsPageRoute';

  static const _i11.PageInfo<TaskDetailsPageRouteArgs> page =
      _i11.PageInfo<TaskDetailsPageRouteArgs>(name);
}

class TaskDetailsPageRouteArgs {
  const TaskDetailsPageRouteArgs({
    this.key,
    required this.timesheet,
  });

  final _i12.Key? key;

  final _i13.Timesheet timesheet;

  @override
  String toString() {
    return 'TaskDetailsPageRouteArgs{key: $key, timesheet: $timesheet}';
  }
}

/// generated route for
/// [_i10.TimerSheetsPage]
class TimerSheetsPageRoute extends _i11.PageRouteInfo<void> {
  const TimerSheetsPageRoute({List<_i11.PageRouteInfo>? children})
      : super(
          TimerSheetsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'TimerSheetsPageRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}
