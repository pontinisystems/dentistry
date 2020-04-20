
import 'package:json_annotation/json_annotation.dart';

part 'login_model.g.dart';

@JsonSerializable()
class LoginModel {
  
  final String email;
  final String password;
  
  LoginModel({
    this.email,
    this.password,
  });

factory LoginModel.fromJson(Map<String, dynamic> json) => _$LoginModelFromJson(json);
  Map<String, dynamic> toJson() => _$LoginModelToJson(this);

 

  LoginModel copyWith({
    String login,
    String password,
  }) {
    return LoginModel(
      email: login ?? this.email,
      password: password ?? this.password,
    );
  }
}
