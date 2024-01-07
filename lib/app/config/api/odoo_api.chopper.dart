// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'odoo_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$OdooApi extends OdooApi {
  _$OdooApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = OdooApi;

  @override
  Future<Response<List<Timesheet>>> getTimeSheets() {
    final Uri $url = Uri.parse('/odoo-assessment/timesheets.json');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<Timesheet>, Timesheet>($request);
  }

  @override
  Future<Response<List<Project>>> getProjects() {
    final Uri $url = Uri.parse('/odoo-assessment/projects.json');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<Project>, Project>($request);
  }

  @override
  Future<Response<List<Task<dynamic>>>> getTasks() {
    final Uri $url = Uri.parse('/odoo-assessment/tasks.json');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<Task<dynamic>>, Task<dynamic>>($request);
  }
}
