import 'package:flutter/material.dart';

class DropdownsWidget extends StatefulWidget {
  final List<dynamic> dropdownOptions;
  final String title;
  final Function(dynamic)? onDropdownChanged;

  DropdownsWidget({
    required this.dropdownOptions,
    required this.onDropdownChanged,
    required this.title,
  });

  @override
  _DropdownsWidgetState createState() => _DropdownsWidgetState();
}

class _DropdownsWidgetState extends State<DropdownsWidget> {
  dynamic selectedOption;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: DropdownButtonFormField<dynamic>(
        value: selectedOption,
        onChanged: (value) {
          setState(() {
            selectedOption = value;
          });
          if (widget.onDropdownChanged != null) {
            widget.onDropdownChanged!(value!);
          }
        },
        validator: (dynamic value) {
          if (value == null || value.name.isEmpty) {
            return 'Please enter a ${widget.title}';
          }
          return null;
        },
        items: widget.dropdownOptions.map((option) {
          return DropdownMenuItem<dynamic>(
            value: option,
            child: Row(
              children: [
                if (colorMap.containsKey(option.name))
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: colorMap[option.name],
                  ),
                const SizedBox(width: 8),
                Text(option.name),
              ],
            ),
          );
        }).toList(),
        icon: const Icon(Icons.keyboard_arrow_down_sharp),
        decoration: InputDecoration(
          labelText: widget.title,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}

Map colorMap = {
  'red': Colors.red,
  'green': Colors.green,
  'yellow': Colors.yellow,
  'blue': Colors.blue,
};
