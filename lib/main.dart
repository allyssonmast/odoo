import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:odoo/app/config/dependence_injection/injection.dart';
import 'package:path_provider/path_provider.dart';

import 'app/config/bloc/bloc_observer.dart';
import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: await getApplicationDocumentsDirectory());
  Bloc.observer = TripBlocObserver();
  runApp(const MyApp());
}
