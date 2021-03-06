import 'package:barber/app/data/helpers/sizes_helpers.dart';
import 'package:barber/app/global/widgets/button/raised_button.dart';
import 'package:barber/app/global/widgets/text/form_text.dart';
import 'package:barber/app/modules/register/register_controller.dart';
import 'package:barber/app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                width: Get.mediaQuery.size.width * 0.5,
                child: SizedBox(
                  child: Image.asset('assets/images/bg-register.png'),
                ),
              ),
              Divider(),
              TextFormFieldWidget(
                hintText: 'Seu e-mail',
                keyboardType: TextInputType.emailAddress,
              ),
              Divider(),
              TextFormFieldWidget(
                hintText: 'Sua senha',
                obscureText: true,
              ),
              Divider(),
              Divider(),
              RaisedButtonWidget(
                onTap: () {},
                width: double.infinity,
                heigh: NORMALBUTTONSIZE,
                buttonColor: appThemeData.buttonColor,
                buttonText: 'PRONTO',
                isBold: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}