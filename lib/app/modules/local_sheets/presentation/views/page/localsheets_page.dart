import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../config/shered_widgets/noitem/noitem.dart';

@RoutePage()
class LocalSheetsPage extends StatelessWidget {
  const LocalSheetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NoItemWidget(
        icon: Icon(
          Icons.access_time,
          size: 100,
        ),
        title: 'You dont have any local timesheets',
        subTitle: 'Create a timer to begin tracking time',
      ),
    );
  }
}
