import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../config/auto_router/routes_imports.gr.dart';

AppBar prejectsAppBar(BuildContext context) => AppBar(
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
    );
