import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:odoo/app/config/shered_widgets/noitem/noitem.dart';

@RoutePage()
class FavoritiesSheetsPage extends StatelessWidget {
  const FavoritiesSheetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NoItemWidget(
        icon: Icon(
          Icons.star_purple500_outlined,
          size: 100,
        ),
        title: 'No favorited timers yet',
        subTitle: 'You can mark a timer as favorite either on the timer creation page or within an existing timer',
      ),
    );
  }
}
