import 'package:barber/app/data/helpers/sizes_helpers.dart';
import 'package:barber/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class FlatButtonWidget extends StatelessWidget {

  final Function onTap;
  final String buttonText;
  final bool isBold;

  FlatButtonWidget({
    @required this.onTap,
    @required this.buttonText,
    this.isBold = false,
});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
          child: Text(
            this.buttonText,
            style: TextStyle(
              fontSize: TEXTFONTSIZE,
              color: appThemeData.primaryColorLight,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
      ),
    );
  }
}
