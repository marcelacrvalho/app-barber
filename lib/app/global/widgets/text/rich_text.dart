import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {

  final String firsText;
  final String secondText;
  final Color mainColor;
  final double fontSize;
  final bool isBold;
  final Color firstTextColor;

  RichTextWidget({
    @required this.firsText,
    @required this.secondText,
    @required this.fontSize,
    @required this.firstTextColor,
    this.mainColor = Colors.black,
    this.isBold = true,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
            color: this.mainColor,
            fontSize: this.fontSize,
            fontWeight: this.isBold ? FontWeight.bold : FontWeight.normal,
        ),
        children: <TextSpan>[
          TextSpan(
              text: this.firsText,
              style: TextStyle(
                  color: this.firstTextColor,
              ),
          ),
          TextSpan(text: this.secondText),
        ],
      ),
    );
  }
}
