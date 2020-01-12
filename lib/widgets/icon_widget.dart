import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

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
          style: kTextLabel,
        ),
      ],
    );
  }
}
