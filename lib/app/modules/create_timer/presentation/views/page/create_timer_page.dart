import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:odoo/app/config/dependence_injection/injection.dart';
import 'package:odoo/app/modules/create_projects/domain/entities/task.dart';
import 'package:odoo/app/modules/create_timer/presentation/views/widgets/custom_dropdown.dart';
import 'package:odoo/app/modules/create_timer/presentation/views/widgets/custom_textfield.dart';
import 'package:odoo/app/modules/local_sheets/bloc/local_sheets_bloc.dart';
import 'package:odoo/app/modules/projects/bloc/project_bloc.dart';
import 'package:odoo/app/modules/projects/model/project.dart';
import 'package:odoo/app/modules/timer_sheets/domain/entities/timesheet.dart';

@RoutePage()
class CreateTimerPage extends StatefulWidget {
  const CreateTimerPage({Key? key}) : super(key: key);

  @override
  State<CreateTimerPage> createState() => _CreateTimerPageState();
}

class _CreateTimerPageState extends State<CreateTimerPage> {

  var textController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool favorite = false;
  late Task task;
  late Project project;
  var taskList = fakeTasksList();

  @override
  Widget build(BuildContext context) {
    var projectList = getIt<ProjectBloc>().state.allProjects;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Create Timer'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Column(
                  children: [
                    DropdownsWidget(
                      dropdownOptions: projectList,
                      onDropdownChanged: (value) {
                        project = value;
                      },
                      title: 'Projects',
                    ),
                    DropdownsWidget(
                      dropdownOptions: taskList,
                      onDropdownChanged: (value) {
                        task = value;
                      },
                      title: 'Task',
                    ),
                    CustomTextField(
                      label: 'Description',
                      controller: textController,
                    ),
                    CheckboxListTile(
                      value: favorite,
                      controlAffinity: ListTileControlAffinity.leading,
                      title: const Text('Make Favorite'),
                      onChanged: (onChanged) {
                        favorite = onChanged!;
                        setState(() {});
                      },
                    )
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState?.save();
                    var timesheet = Timesheet(
                      isCountin: false,
                      startTime: DateTime.now(),
                      endTime: DateTime.now().add(const Duration(days: 10)),
                      description: textController.text,
                      associatedProject: project.name,
                      responsibleUser: task.responsible,
                      favorite: favorite,
                      task: task,
                      taskDuration: const Duration(hours: 0),
                      tags: [],
                      comments: [],
                      associatedRecords: [],
                    );
                    getIt<LocalSheetsBloc>()
                        .add(AddTimeSheets(timesheet: timesheet));
                    Navigator.pop(context);
                  }
                },
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('Create Timer'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
