// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatientModel _$PatientModelFromJson(Map<String, dynamic> json) {
  return PatientModel(
    user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
    cro: json['cro'] as String,
  );
}

Map<String, dynamic> _$PatientModelToJson(PatientModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'cro': instance.cro,
    };
