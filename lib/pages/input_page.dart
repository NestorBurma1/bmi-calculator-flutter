import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/widgets/icon_widget.dart';

const int topContainerColor = 0xFF1D1F33;
const int middleContainerColor = 0xFF101427;
const int bottomBlackContainerColor = 0xFF101427;
const int bottomPurpleContainerColor = 0xFFEA1556;
const double bottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    childCard: IconWidget(
                      iconData: FontAwesomeIcons.mars,
                      iconText: 'MALE',
                    ),
                    ownColor: Color(topContainerColor),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    childCard: IconWidget(
                      iconData: FontAwesomeIcons.venus,
                      iconText: 'FEMALE',
                    ),
                    ownColor: Color(topContainerColor),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: ReusableCard(
              ownColor: Color(middleContainerColor),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    ownColor: Color(bottomBlackContainerColor),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    ownColor: Color(bottomBlackContainerColor),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: bottomContainerHeight,
            color: Color(bottomPurpleContainerColor),
          ),
        ],
      ),
    );
  }
}


