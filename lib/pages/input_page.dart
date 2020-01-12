import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/widgets/icon_widget.dart';
import 'package:bmi_calculator/constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selected;
  Color maleCardColor = Color(kTopContainerActiveColor);
  Color femaleCardColor = Color(kTopContainerActiveColor);
  int heightStartValue = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                    ownColor: selected == Gender.male
                        ? Color(kTopContainerActiveColor)
                        : Color(kTopContainerInactiveColor),
                    onPress: () {
                      setState(
                        () {
                          selected = Gender.male;
                        },
                      );
                    },
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    childCard: IconWidget(
                      iconData: FontAwesomeIcons.venus,
                      iconText: 'FEMALE',
                    ),
                    ownColor: selected == Gender.female
                        ? Color(kTopContainerActiveColor)
                        : Color(kTopContainerInactiveColor),
                    onPress: () {
                      setState(
                        () {
                          selected = Gender.female;
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: ReusableCard(
              ownColor: Color(kMiddleContainerColor),
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kTextLabel,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        heightStartValue.toString(),
                        style: kNumberStyle,
                      ),
                      Text(
                        'cm',
                        style: kTextLabel,
                      ),
                    ],
                  ),
                  Slider(
                    value: heightStartValue.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newValue) {
                      setState(() {
                        heightStartValue = newValue.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    ownColor: Color(kBottomBlackContainerColor),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    ownColor: Color(kBottomBlackContainerColor),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: kBottomContainerHeight,
            color: Color(kBottomPurpleContainerColor),
          ),
        ],
      ),
    );
  }
}
