import 'dart:convert';
import 'package:barber/app/data/helpers/api_helpers.dart';
import 'package:barber/app/data/helpers/url_helpers.dart';
import 'package:http/http.dart' as http;

class AuthApiClient {
  final http.Client httpClient = http.Client();

  Future<Map<String, dynamic>> login (String email, String password) async {
    try {
      Map params = {'email': email, 'password': password};
      var response = await http.post(
        BASEURL + '/auth/login',
        body: params,
        headers: DEFAULTHEADERS,
      );
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        print(response.statusCode);
      }
      return null;
    } catch (error) {
      print(error);
    }
  }

  Future<Map<String, dynamic>> register (String username, String email, String password) async {
    try {
      Map params = {'username': username, 'email': email, 'password': password};
      var response = await http.post(
        BASEURL + '/auth/register',
        body: params,
        headers: DEFAULTHEADERS,
      );
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        print(response.statusCode);
      }
      return null;
    } catch (error) {
      print(error);
    }
  }
}
