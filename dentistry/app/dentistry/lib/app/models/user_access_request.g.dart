// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_access_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAccessRequest _$UserAccessRequestFromJson(Map<String, dynamic> json) {
  return UserAccessRequest(
    login: json['login'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$UserAccessRequestToJson(UserAccessRequest instance) =>
    <String, dynamic>{
      'login': instance.login,
      'password': instance.password,
    };
