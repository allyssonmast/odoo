import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeCustomer extends StatelessWidget {
  final DateTime time;
  const TimeCustomer({Key? key, required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String getCustomTime(String key) {
      return DateFormat(key).format(time);
    }

    var textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(getCustomTime('EEEE'), style: textTheme.bodySmall),
        Text(getCustomTime('dd.MM.yyyy'), style: textTheme.headlineSmall),
        Text('Start Time ${getCustomTime('HH:mm')}',
            style: textTheme.labelLarge),
      ],
    );
  }
}
