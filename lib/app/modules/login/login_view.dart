import 'package:barber/app/global/widgets/text/form_text.dart';
import 'package:barber/app/modules/login/login_controller.dart';
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
    return Column(
      children: [
        TextFormFieldWidget(
            controller: controller.emailController,
            hintText: 'Seu e-mail',
        ),
        TextFormFieldWidget(
          controller: controller.passwordController,
          hintText: 'Seu e-mail',
        ),
      ],
    );
  }
}
