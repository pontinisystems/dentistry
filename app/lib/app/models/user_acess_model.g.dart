// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_acess_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAcessModel _$UserAcessModelFromJson(Map<String, dynamic> json) {
  return UserAcessModel(
    login: json['login'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$UserAcessModelToJson(UserAcessModel instance) =>
    <String, dynamic>{
      'login': instance.login,
      'password': instance.password,
    };
