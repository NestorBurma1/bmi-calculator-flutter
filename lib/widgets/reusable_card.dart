import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.ownColor, this.childCard, this.onPress});

  final Color ownColor;
  final Widget childCard;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: childCard,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: ownColor,
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }

}


