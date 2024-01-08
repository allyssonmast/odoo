import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:odoo/app/config/api/odoo_api.dart';

import '../helpers/constants.dart';

@module
abstract class InjectableModules {
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
