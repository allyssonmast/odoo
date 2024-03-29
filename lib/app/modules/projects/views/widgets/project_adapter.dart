import 'package:flutter/material.dart';
import 'package:odoo/app/config/dependence_injection/injection.dart';
import 'package:odoo/app/modules/projects/bloc/project_bloc.dart';
import '../../../create_timer/views/widgets/custom_dropdown.dart';
import '../../model/project.dart';

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
        title: Text(project.name),
        trailing: IconButton(
          onPressed: () {
            getIt<ProjectBloc>().add(UpdateProject(
                project: project.copyWith(isFavorite: !project.isFavorite)));
          },
          icon: project.isFavorite
              ? const Icon(Icons.star)
              : const Icon(Icons.star_border),
        ),
        subtitle: Text('${project.tasks.length} tasks'),
      ),
    );
  }
}
