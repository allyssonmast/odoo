import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:odoo/app/modules/settings/presentation/cubit/settings_cubit.dart';

import 'app/config/auto_router/routes_imports.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(393, 852),
        minTextAdapt: true,
        useInheritedMediaQuery: true,
        splitScreenMode: true,
        builder: (context, child) {
          return BlocProvider(
            create: (context) => SettingsCubit(),
            child: BlocBuilder<SettingsCubit, Brightness>(
                builder: (context, state) {
              return MaterialApp.router(
                title: 'odoo app',
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  useMaterial3: true,
                  colorSchemeSeed: Colors.blue,
                  brightness: state
                ),
                routeInformationParser: appRouter.defaultRouteParser(),
                routerDelegate: appRouter.delegate(),
              );
            }),
          );
        });
  }
}
