import 'package:barber/app/data/helpers/sizes_helpers.dart';
import 'package:barber/app/global/widgets/button/raised_button.dart';
import 'package:barber/app/global/widgets/text/rich_text.dart';
import 'package:barber/app/modules/initial/initial_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitialView extends GetView<InitialController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Divider(height: Get.mediaQuery.size.height * 0.1),
          Container(
            width: double.infinity,
            height: BIGIMAGESIZE,
            child: Image.asset('assets/images/bg.png', fit: BoxFit.contain),
          ),
          RichTextWidget(
              firsText: 'BARBER ',
              secondText: 'SHOP',
              fontSize: TITLEFONTSIZE,
              firstTextColor: Colors.blue[700],
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: RaisedButtonWidget(
                onTap: () => Get.toNamed('/login'),
                width: double.infinity,
                heigh: BIGBUTTONSIZE,
                buttonColor: Colors.blue[700],
                buttonText: 'VAMOS LÁ',
                isBold: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}