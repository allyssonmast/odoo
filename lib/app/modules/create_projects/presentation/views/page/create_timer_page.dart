import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:odoo/app/config/dependence_injection/injection.dart';
import 'package:odoo/app/modules/create_timer/presentation/views/widgets/custom_dropdown.dart';
import 'package:odoo/app/modules/create_timer/presentation/views/widgets/custom_textfield.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/create_projects_cubit.dart';

@RoutePage()
class CreateProjectsPage extends StatelessWidget {
  const CreateProjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CreateProjectsCubit>(),
      child: BlocConsumer<CreateProjectsCubit, CreateProjectsState>(
        listener: (BuildContext context, CreateProjectsState state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text('Create Projects'),
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        CustomTextField(
                          label: 'Project name',
                          controller: TextEditingController(),
                        ),
                        DropdownsWidget(
                          dropdownOptions:
                              context.read<CreateProjectsCubit>().listColors,
                          onDropdownChanged: (value) {},
                          title: 'Color',
                        ),
                        CheckboxListTile(
                          value: false,
                          controlAffinity: ListTileControlAffinity.leading,
                          title: const Text('Make Favorite'),
                          onChanged: (onChanged) {},
                        )
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {

                    },
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text('Create Project'),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
