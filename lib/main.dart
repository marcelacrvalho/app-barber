import 'package:barber/app/routes/app_pages.dart';
import 'package:barber/app/routes/app_routes.dart';
import 'package:barber/app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    title: 'Barber App',
    debugShowCheckedModeBanner: false,
    theme: appThemeData,
    initialRoute: Routes.INITIAL,
    getPages: AppPages.routes,
  ));
}
