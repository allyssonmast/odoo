import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:odoo/app/modules/create_timer/presentation/views/widgets/custom_dropdown.dart';
import 'package:odoo/app/modules/create_timer/presentation/views/widgets/custom_textfield.dart';

@RoutePage()
class CreateTimerPage extends StatelessWidget {
  const CreateTimerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var projectList = ['', '', ''];
    var taskList = ['', '', ''];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Create Timer'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Column(
                children: [
                  DropdownsWidget(
                    dropdownOptions: projectList,
                    onDropdownChanged: (value) {},
                    title: 'Projects',
                  ),
                  DropdownsWidget(
                    dropdownOptions: taskList,
                    onDropdownChanged: (value) {},
                    title: 'Task',
                  ),
                  CustomTextField(
                    label: 'Description',
                    controller: TextEditingController(),
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
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Create Timer'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
