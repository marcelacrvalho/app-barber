import 'package:barber/app/data/model/user_model.dart';

class Auth {
  User user;
  int id;
  String createdAt;
  String accesToken;

  Auth({this.user, this.id, this.createdAt, this.accesToken});

  Auth.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    id = json['id'];
    createdAt = json['created_at'];
    accesToken = json['acces_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    data['id'] = this.id;
    data['created_at'] = this.createdAt;
    data['acces_token'] = this.accesToken;
    return data;
  }
}