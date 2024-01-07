import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odoo/app/config/dependence_injection/injection.dart';
import 'package:odoo/app/config/shered_widgets/noitem/noitem.dart';
import 'package:odoo/app/modules/projects/presentation/bloc/project_bloc.dart';
import 'package:odoo/app/modules/projects/presentation/views/widgets/app_bar.dart';
import 'package:odoo/app/modules/projects/presentation/views/widgets/projects_listview.dart';

@RoutePage()
class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: prejectsAppBar(context),
      body: BlocProvider(
        create: (_) => getIt<ProjectBloc>(),
        child:
            BlocBuilder<ProjectBloc, ProjectState>(builder: (context, state) {
          if (state is ProjectStateLoaded) {
            return state.task.isNotEmpty
                ? ProjectListView(task: state.task)
                : noProject();
          }
          return noProject();
        }),
      ),
    );
  }
}

Widget noProject() => const NoItemWidget(
    title: 'No projects yet',
    icon: Icon(Icons.star_purple500_outlined, size: 100),
    subTitle:
        'You can mark a project as favorite either an the timer creation page o within an existing project');
