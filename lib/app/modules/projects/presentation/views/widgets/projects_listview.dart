import 'package:flutter/material.dart';
import 'package:odoo/app/modules/projects/presentation/views/widgets/project_adapter.dart';

import '../../../domain/entities/project.dart';

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
