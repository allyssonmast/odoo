import 'package:flutter/material.dart';

class DropdownsWidget extends StatefulWidget {
  final List<String> dropdownOptions;
  final String title;
  final Function(String)? onDropdownChanged;

  DropdownsWidget({
    required this.dropdownOptions,
    required this.onDropdownChanged,
    required this.title,
  });

  @override
  _DropdownsWidgetState createState() => _DropdownsWidgetState();
}

class _DropdownsWidgetState extends State<DropdownsWidget> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: DropdownButtonFormField<String>(
        value: selectedOption,
        onChanged: (value) {
          setState(() {
            selectedOption = value;
          });
          if (widget.onDropdownChanged != null) {
            widget.onDropdownChanged!(value!);
          }
        },
        items: widget.dropdownOptions.map((option) {
          return DropdownMenuItem<String>(
            value: option,
            child: Row(
              children: [
                if (colorMap.containsKey(option))
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: colorMap[option],
                  ),
                const SizedBox(width: 8),
                Text(option),
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
