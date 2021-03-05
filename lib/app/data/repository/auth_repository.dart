import 'package:barber/app/data/model/auth_model.dart';
import 'package:barber/app/data/provider/auth_provider.dart';

class AuthRepository {
  final AuthApiClient apiClient = AuthApiClient();

  Future<Auth> login (String email, String password) async {
    return Auth.fromJson(await apiClient.login(email, password));
  }
}

