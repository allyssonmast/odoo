import 'package:flutter/material.dart';

class NoItemWidget extends StatelessWidget {
  final String title;
  final Widget icon;
  final String subTitle;
  const NoItemWidget(
      {Key? key,
      required this.title,
      required this.icon,
      required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Card(
              child: SizedBox(
                height: 150,
                width: 150,
                child: icon,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Text(
            subTitle,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
