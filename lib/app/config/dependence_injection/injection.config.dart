// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:hydrated_bloc/hydrated_bloc.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../../modules/create_projects/data/database/projetc_database.dart'
    as _i4;
import '../../modules/create_projects/data/repository/create_project_repository_imp.dart'
    as _i6;
import '../../modules/create_projects/domain/repository/create_project_repository.dart'
    as _i5;
import '../../modules/create_projects/domain/usecases/createproject_usecase.dart'
    as _i7;
import '../../modules/create_projects/presentation/bloc/create_projects_cubit.dart'
    as _i8;
import 'module.dart' as _i9;

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
    final injectableModules = _$InjectableModules();
    await gh.factoryAsync<_i3.HydratedStorage>(
      () => injectableModules.hydratedStorage,
      preResolve: true,
    );
    gh.factory<_i4.ProjectDatabase>(
        () => _i4.ProjectDatabase(gh<_i3.HydratedStorage>()));
    gh.factory<_i5.CreateProjectRepository>(
        () => _i6.CreateProjectRepositoryImp(gh<_i4.ProjectDatabase>()));
    gh.factory<_i7.CreateProjectUseCase>(
        () => _i7.CreateProjectUseCaseImp(gh<_i5.CreateProjectRepository>()));
    gh.factory<_i8.CreateProjectsCubit>(
        () => _i8.CreateProjectsCubit(gh<_i7.CreateProjectUseCase>()));
    return this;
  }
}

class _$InjectableModules extends _i9.InjectableModules {}
