import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odoo/app/config/dependence_injection/injection.dart';
import 'package:odoo/app/modules/projects/domain/entities/project.dart';
import 'package:odoo/app/modules/create_timer/presentation/views/widgets/custom_dropdown.dart';
import 'package:odoo/app/modules/create_timer/presentation/views/widgets/custom_textfield.dart';
import 'package:odoo/app/modules/projects/presentation/bloc/project_bloc.dart';

@RoutePage()
class CreateProjectsPage extends StatefulWidget {
  const CreateProjectsPage({Key? key}) : super(key: key);

  @override
  State<CreateProjectsPage> createState() => _CreateProjectsPageState();
}

class _CreateProjectsPageState extends State<CreateProjectsPage> {
  final _formKey = GlobalKey<FormState>();
  bool isFavote = false;
  String? color;
  String? projectName;

  @override
  Widget build(BuildContext context) {
    final cubit = getIt<ProjectBloc>();
    return BlocListener<ProjectBloc, ProjectState>(
      bloc: cubit,
      listener: (BuildContext context, state) {
        if (state is ProjectStateLoaded) {
          context.router.pop();
        }
        if (state is ProjectFailure) {
          showDialog(
              context: context,
              builder: (_) {
                return const AlertDialog(
                  content: Text('Something went wrong ...'),
                );
              });
        }
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Create Projects'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      CustomTextField(
                        label: 'Project name',
                        onSaved: (value) {
                          projectName = value;
                        },
                        controller: TextEditingController(),
                      ),
                      DropdownsWidget(
                        dropdownOptions: cubit.listColors,
                        onDropdownChanged: (value) {
                          color = value;
                        },
                        title: 'Color',
                      ),
                      CheckboxListTile(
                        value: isFavote,
                        controlAffinity: ListTileControlAffinity.leading,
                        title: const Text('Make Favorite'),
                        onChanged: (onChanged) {
                          setState(() {
                            isFavote = onChanged!;
                          });
                        },
                      )
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState?.save();

                      var project = Project(
                        id: 0,
                        name: projectName!,
                        color: color!,
                        isFavorite: isFavote,
                        isCompleted: false,
                        tasks: [],
                      );

                      cubit.add(ProjectAdd(project));
                    }
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('Create Project'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
