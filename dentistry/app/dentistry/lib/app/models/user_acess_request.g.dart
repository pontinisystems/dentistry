// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_acess_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAcessRequest _$UserAcessRequestFromJson(Map<String, dynamic> json) {
  return UserAcessRequest(
    login: json['login'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$UserAcessRequestToJson(UserAcessRequest instance) =>
    <String, dynamic>{
      'login': instance.login,
      'password': instance.password,
    };
