import 'package:flutter/material.dart';

const TextStyle textLabel = TextStyle(
  fontSize: 18.0,
  color: Color(0xFFFDFFFF),
);

class IconWidget extends StatelessWidget {
  IconWidget({
    @required this.iconData,
    @required this.iconText,
  });

  final IconData iconData;
  final String iconText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 80.0,
          color: Color(0xFFFDFFFF),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          iconText,
          style: textLabel,
        ),
      ],
    );
  }
}
