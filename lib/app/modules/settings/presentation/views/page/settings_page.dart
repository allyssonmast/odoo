import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odoo/app/modules/settings/presentation/cubit/settings_cubit.dart';
import 'package:odoo/app/modules/settings/presentation/views/widgets/custm_divider.dart';
import 'package:odoo/app/modules/settings/presentation/views/widgets/custom_listview.dart';

@RoutePage()
class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  var islight = false;
  var listOdoo = [
    {'title': 'https://portal.apexive.com/', 'subTitle': 'nikita3@apexive.com'},
    {'title': 'https://portal.apexive.com/', 'subTitle': 'nikita3@apexive.com'},
    {'title': 'Sync new Odoo account'}
  ];
  var listGithub = [
    {'title': 'allyssonmast'},
    {'title': 'Sync new Odoo account'}
  ];
  var listPrivacy = [
    {'title': 'Privacy Policy'},
    {'title': 'Terms of Service'}
  ];
  @override
  Widget build(BuildContext context) {
    var cubit = context.read<SettingsCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: SwitchListTile(
                  value: cubit.state==Brightness.dark,
                  onChanged: (onChanged) {
                    cubit.toggleBrightness();
                  },
                  title: const Text('Light Theme'),
                ),
              ),
              const CustomDivider(),
              CustomLisView(
                mainTitle: 'Odoo',
                list: listOdoo,
              ),
              CustomLisView(
                mainTitle: 'GitHub',
                list: listGithub,
              ),
              const CustomDivider(),
              CustomLisView(
                list: listPrivacy,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
