
import 'package:json_annotation/json_annotation.dart';

part 'user_access_request.g.dart';

@JsonSerializable()
class UserAccessRequest {
  
  final String login;
  final String password;
  
  UserAccessRequest({
    this.login,
    this.password,
  });

factory UserAccessRequest.fromJson(Map<String, dynamic> json) => _$UserAccessRequestFromJson(json);
  Map<String, dynamic> toJson() => _$UserAccessRequestToJson(this);

 

  UserAccessRequest copyWith({
    String login,
    String password,
  }) {
    return UserAccessRequest(
      login: login ?? this.login,
      password: password ?? this.password,
    );
  }
}
