
import 'package:json_annotation/json_annotation.dart';

part 'user_acess_model.g.dart';

@JsonSerializable()
class UserAcessModel {
  
  final String login;
  final String password;
  
  UserAcessModel({
    this.login,
    this.password,
  });

factory UserAcessModel.fromJson(Map<String, dynamic> json) => _$UserAcessModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserAcessModelToJson(this);

 

  UserAcessModel copyWith({
    String login,
    String password,
  }) {
    return UserAcessModel(
      login: login ?? this.login,
      password: password ?? this.password,
    );
  }
}
