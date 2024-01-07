import 'package:chopper/chopper.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:odoo/app/config/api/odoo_api.dart';
import 'package:path_provider/path_provider.dart';

import '../helpers/constants.dart';

@module
abstract class InjectableModules {
  @preResolve
  Future<HydratedStorage> get hydratedStorage async => HydratedStorage.build(
      storageDirectory: await getApplicationDocumentsDirectory());

  @lazySingleton
  OdooApi get odooApi;

  @lazySingleton
  JsonConverter get jsonConverter => const JsonConverter();

  @lazySingleton
  ChopperClient get chopperClient => ChopperClient(
        baseUrl: Uri.parse(BASE_URL),
        interceptors: [
          const HeadersInterceptor({
            'Cache-control': 'no-cache',
          }),
          HttpLoggingInterceptor(),
        ],
      );
}
