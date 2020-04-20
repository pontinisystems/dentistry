
import 'package:json_annotation/json_annotation.dart';
part 'login_authentication_model.g.dart';


@JsonSerializable()
class LoginAuthenticationModel {
  bool authentication;
  String token;
  LoginAuthenticationModel({
    this.authentication,
    this.token,
  });

 factory LoginAuthenticationModel.fromJson(Map<String, dynamic> json) => _$LoginAuthenticationModelFromJson(json);
  Map<String, dynamic> toJson() => _$LoginAuthenticationModelToJson(this);
}
