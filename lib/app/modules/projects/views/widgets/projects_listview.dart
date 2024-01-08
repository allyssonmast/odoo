import 'package:flutter/material.dart';

import '../../model/project.dart';
import 'project_adapter.dart';

class ProjectListView extends StatelessWidget {
  final List<Project> task;
  const ProjectListView({Key? key, required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      itemCount: task.length,
      itemBuilder: (_, index) {
        return ProjectAdapter(project: task[index]);
      },
    );
  }
}
