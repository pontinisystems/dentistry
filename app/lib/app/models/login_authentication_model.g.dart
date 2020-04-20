// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_authentication_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginAuthenticationModel _$LoginAuthenticationModelFromJson(
    Map<String, dynamic> json) {
  return LoginAuthenticationModel(
    authentication: json['authentication'] as bool,
    token: json['token'] as String,
  );
}

Map<String, dynamic> _$LoginAuthenticationModelToJson(
        LoginAuthenticationModel instance) =>
    <String, dynamic>{
      'authentication': instance.authentication,
      'token': instance.token,
    };
