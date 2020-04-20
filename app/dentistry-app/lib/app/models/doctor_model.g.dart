// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorModel _$DoctorModelFromJson(Map<String, dynamic> json) {
  return DoctorModel(
    user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
    cro: json['cro'] as String,
  );
}

Map<String, dynamic> _$DoctorModelToJson(DoctorModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'cro': instance.cro,
    };
