import 'package:flutter/material.dart';

class CenterWidget extends StatelessWidget {
  final Widget child;
  final double? size;
  final Function()? onTap;
  const CenterWidget({Key? key, required this.child, this.size, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Center(
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.09),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
