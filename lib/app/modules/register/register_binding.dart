import 'package:barber/app/data/provider/auth_provider.dart';
import 'package:barber/app/modules/register/register_controller.dart';
import 'package:get/get.dart';

class RegisterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(() => RegisterController());
    Get.lazyPut<AuthApiClient>(() => AuthApiClient());
  }
}