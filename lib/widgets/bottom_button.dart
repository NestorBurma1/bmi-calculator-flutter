import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
class BottomButton extends StatelessWidget {
  const BottomButton({@required this.text, @required this.onPress});

  final String text;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 25.0),
          child: Text(
            text,
            style: kBottomButton,
          ),
        ),
        width: double.infinity,
        height: kBottomContainerHeight,
        color: Color(kBottomPurpleContainerColor),
      ),
    );
  }
}