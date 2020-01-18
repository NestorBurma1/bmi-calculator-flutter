import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.iconData, @required this.onPressed});

  final IconData iconData;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        iconData,
        color: Colors.white,
      ),
      fillColor: Color(0xFF4C4F5),
      onPressed: () {
        onPressed();
      },
      constraints: BoxConstraints(
        minWidth: 50.0,
        minHeight: 50.0,
      ),
      shape: CircleBorder(),
    );
  }
}
