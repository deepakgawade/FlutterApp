import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class CardData extends StatelessWidget {
  const CardData({this.cardIcon, this.cardLabel});
  final IconData cardIcon;
  final String cardLabel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          cardLabel,
          style: lableTextStyle,
        )
      ],
    );
  }
}
