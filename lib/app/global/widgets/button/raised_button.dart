import 'package:barber/app/data/helpers/sizes_helpers.dart';
import 'package:flutter/material.dart';

class RaisedButtonWidget extends StatelessWidget {

  final Function onTap;
  final double width;
  final double heigh;
  final Color buttonColor;
  final String buttonText;
  final Color buttonTextColor;
  final bool isBold;

  RaisedButtonWidget({
    @required this.onTap,
    @required this.width,
    @required this.heigh,
    @required this.buttonColor,
    @required this.buttonText,
    this.buttonTextColor = Colors.white,
    this.isBold = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onTap,
      splashColor: Colors.yellow,
      child: Container(
        width: this.width,
        height: this.heigh,
        decoration: BoxDecoration(
          color: this.buttonColor,
          boxShadow: [
            BoxShadow(
                blurRadius: 4.0,
                spreadRadius: 1.0,
                offset: Offset(1, 1),
            ),
          ]
        ),
        child: Center(
          child: Text(
            this.buttonText,
            textAlign: TextAlign.center,
            style: TextStyle(
              letterSpacing: 3.0,
              color: this.buttonTextColor,
              fontSize: BUTTONFONTSIZE,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
