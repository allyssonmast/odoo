import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:odoo/app/modules/timer_sheets/domain/entities/timesheet.dart';

import '../../modules/projects/model/project.dart';

part 'odoo_api.chopper.dart';

@ChopperApi(baseUrl: '/odoo-assessment')
abstract class OdooApi extends ChopperService {
  @Get(path: 'timesheets.json')
  Future<Response<List<Timesheet>>> getTimeSheets();

  @Get(path: 'projects.json')
  Future<Response<List<Project>>> getProjects();

  @Get(path: 'tasks.json')
  Future<Response<List<Task>>> getTasks();

  static OdooApi create([ChopperClient? client]) =>
      _$OdooApi(client ?? ChopperClient());

  @factoryMethod
  static OdooApi createWithConverter(
      ChopperClient client, JsonConverter converter) {
    return _$OdooApi(client);
  }
}
