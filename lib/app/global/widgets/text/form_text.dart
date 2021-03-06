import 'package:barber/app/data/helpers/sizes_helpers.dart';
import 'package:barber/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {

  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;

  TextFormFieldWidget({
    @required this.controller,
    @required this.hintText,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: this.controller,
      keyboardType: this.keyboardType,
      obscureText: this.obscureText,
      style: TextStyle(
        color: appThemeData.primaryColorDark,
        fontSize: TEXTFONTSIZE,
      ),
      decoration: InputDecoration(
        hintText: this.hintText,
      ),
    );
  }
}
