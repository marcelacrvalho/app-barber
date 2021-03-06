import 'package:barber/app/data/helpers/sizes_helpers.dart';
import 'package:barber/app/global/widgets/button/flat_button.dart';
import 'package:barber/app/global/widgets/button/raised_button.dart';
import 'package:barber/app/global/widgets/text/form_text.dart';
import 'package:barber/app/modules/login/login_controller.dart';
import 'package:barber/app/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends GetView<LoginController> {
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
                  child: Image.asset('assets/images/bg-login.png'),
                ),
              ),
              Divider(),
              TextFormFieldWidget(
                controller: controller.emailController,
                hintText: 'Seu e-mail',
                keyboardType: TextInputType.emailAddress,
              ),
              Divider(),
              TextFormFieldWidget(
                controller: controller.passwordController,
                hintText: 'Sua senha',
                obscureText: true,
              ),
              Divider(),
              Divider(),
              RaisedButtonWidget(
                onTap: controller.onClickLogin,
                width: double.infinity,
                heigh: NORMALBUTTONSIZE,
                buttonColor: appThemeData.buttonColor,
                buttonText: 'ENTRAR',
                isBold: true,
              ),
              Divider(),
              FlatButtonWidget(
                onTap: () {},
                buttonText: 'Ainda não possui uma conta? Registre-se',
                isBold: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
