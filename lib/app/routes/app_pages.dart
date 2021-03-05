import 'package:barber/app/modules/initial/initial_binding.dart';
import 'package:barber/app/modules/initial/initial_view.dart';
import 'package:barber/app/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static const INITIAL = Routes.INITIAL;

  static final routes = [
    GetPage(
      name: Routes.INITIAL,
      page: () => InitialView(),
      binding: InitialBinding(),
    ),
  ];
}