import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../config/shered_widgets/noitem/noitem.dart';

@RoutePage()
class OdooSheetsPage extends StatelessWidget {
  const OdooSheetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NoItemWidget(
        icon: Center(
          child: Text(
            'odoo',
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ),
        title: 'You dont have any odoo timesheets',
        subTitle:
        'Synchronize with odoo to get started',
      ),
    );
  }
}
