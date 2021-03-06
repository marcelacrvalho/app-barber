import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {

  TabController tabController;
  TextEditingController emailController;
  TextEditingController passwordController;
  final RxInt _tabPosition = 1.obs;

  set tabPosition(value) => _tabPosition.value = value;

}