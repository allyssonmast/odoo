import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:odoo/app/config/auto_router/routes_imports.gr.dart';

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
      appBar: AppBar(
        title: Text(
          'Projects',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        actions: [
          Card(
            margin: const EdgeInsets.only(right: 8),
            clipBehavior: Clip.antiAlias,
            child: IconButton(
              onPressed: () {
                context.router.push(const CreateProjectsPageRoute());
              },
              icon: const Icon(Icons.add),
            ),
          )
        ],
      ),
      body: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          itemCount: 5,
          itemBuilder: (_, index) {
            return Card(
              clipBehavior: Clip.antiAlias,
              child: ListTile(
                onTap: () {},
                leading: Container(
                  color: Colors.amber,
                  width: 2,
                  height: double.maxFinite,
                ),
                horizontalTitleGap: 0,
                title: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star_border),
                    Text('S0069: HL cafe'),
                  ],
                ),
                subtitle: Text('6 tasks'),
              ),
            );
          }),
    );
  }
}
