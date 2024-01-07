import 'package:flutter/material.dart';
import 'package:odoo/app/modules/projects/domain/entities/project.dart';

import '../../../../create_timer/presentation/views/widgets/custom_dropdown.dart';

class ProjectAdapter extends StatelessWidget {
  final Project project;
  const ProjectAdapter({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: ListTile(
        onTap: () {},
        leading: Container(
          color: colorMap[project.color],
          width: 2,
          height: double.maxFinite,
        ),
        horizontalTitleGap: 0,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.star_border),
            Text(project.name),
          ],
        ),
        subtitle: Text('${project.tasks.length} tasks'),
      ),
    );
  }
}
