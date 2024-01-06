import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

@module
abstract class InjectableModules {
  @preResolve
  Future<HydratedStorage> get hydratedStorage async => HydratedStorage.build(
      storageDirectory: await getApplicationDocumentsDirectory());
}
