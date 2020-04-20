// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return UserModel(
    gender: json['gender'] as String,
    email: json['email'] as String,
    numberPhone: json['numberPhone'] as String,
    password: json['password'] as String,
    fullName: json['fullName'] as String,
    dateOfBirth: json['dateOfBirth'] as String,
  );
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'email': instance.email,
      'numberPhone': instance.numberPhone,
      'password': instance.password,
      'fullName': instance.fullName,
      'dateOfBirth': instance.dateOfBirth,
      'gender': instance.gender,
    };
