import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.ownColor, this.childCard});

  final Color ownColor;
  final Widget childCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: ownColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
