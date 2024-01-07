// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:chopper/chopper.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hydrated_bloc/hydrated_bloc.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

import '../../modules/projects/data/project_repository.dart' as _i7;
import '../../modules/projects/domain/repository/project_repository.dart'
    as _i6;
import '../../modules/projects/presentation/bloc/project_bloc.dart' as _i11;
import '../../modules/timer_sheets/data/repository.dart' as _i9;
import '../../modules/timer_sheets/domain/repository/timesheets_repository.dart'
    as _i8;
import '../../modules/timer_sheets/domain/usecases/gettimesheet_usecase.dart'
    as _i10;
import '../../modules/timer_sheets/presentation/bloc/timesheet_bloc.dart'
    as _i12;
import '../api/odoo_api.dart' as _i5;
import 'module.dart' as _i13;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectableModules = _$InjectableModules(this);
    gh.lazySingleton<_i3.ChopperClient>(() => injectableModules.chopperClient);
    await gh.factoryAsync<_i4.HydratedStorage>(
      () => injectableModules.hydratedStorage,
      preResolve: true,
    );
    gh.lazySingleton<_i3.JsonConverter>(() => injectableModules.jsonConverter);
    gh.lazySingleton<_i5.OdooApi>(() => injectableModules.odooApi);
    gh.factory<_i6.ProjectRepository>(() => _i7.ProjectRepositoryImp());
    gh.factory<_i8.TimeSheetRepository>(
        () => _i9.TimeSheetRepositoryImp(gh<_i5.OdooApi>()));
    gh.factory<_i10.GetTimeSheetUsecase>(
        () => _i10.GetTimeSheetUsecaseImp(gh<_i8.TimeSheetRepository>()));
    gh.factory<_i11.ProjectBloc>(
        () => _i11.ProjectBloc(gh<_i6.ProjectRepository>()));
    gh.lazySingleton<_i12.TimesheetBloc>(
        () => _i12.TimesheetBloc(gh<_i10.GetTimeSheetUsecase>()));
    return this;
  }
}

class _$InjectableModules extends _i13.InjectableModules {
  _$InjectableModules(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i5.OdooApi get odooApi => _i5.OdooApi.createWithConverter(
        _getIt<_i3.ChopperClient>(),
        _getIt<_i3.JsonConverter>(),
      );
}
