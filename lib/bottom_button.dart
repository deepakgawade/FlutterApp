import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class Bottombutton extends StatelessWidget {
  const Bottombutton({@required this.onTap, @required this.buttonTitle});
  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
          "CALCULATE",
          style: kLageButtonlStyle,
        )),
        color: bottomButtonColor,
        margin: EdgeInsets.only(top: 15.0),
        width: double.infinity,
        height: bottomButtonHeight,
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      onPressed: onPressed,
      fillColor: actionButtonColor,
    );
  }
}
