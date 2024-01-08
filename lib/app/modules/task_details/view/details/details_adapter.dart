import 'package:flutter/material.dart';

class DetailsAdapter extends StatelessWidget {
  final String label;
  final String subtitle;
  const DetailsAdapter({Key? key, required this.label, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (label == 'Project')
                Container(
                  width: 2,
                  color: Colors.amber,
                ),
              const SizedBox(
                width: 8,
              ),
              Text(subtitle, style: theme.titleLarge),
            ],
          ),
        ),
      ],
    );
  }
}
