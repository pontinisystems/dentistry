
import 'package:json_annotation/json_annotation.dart';

part 'user_acess_request.g.dart';

@JsonSerializable()
class UserAcessRequest {
  
  final String login;
  final String password;
  
  UserAcessRequest({
    this.login,
    this.password,
  });

factory UserAcessRequest.fromJson(Map<String, dynamic> json) => _$UserAcessRequestFromJson(json);
  Map<String, dynamic> toJson() => _$UserAcessRequestToJson(this);

 

  UserAcessRequest copyWith({
    String login,
    String password,
  }) {
    return UserAcessRequest(
      login: login ?? this.login,
      password: password ?? this.password,
    );
  }
}
