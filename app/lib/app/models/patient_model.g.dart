// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatientModel _$PatientModelFromJson(Map<String, dynamic> json) {
  return PatientModel(
    people: PeopleModel.fromJson(json['people'] as Map<String, dynamic>),
    email: json['email'] as String,
  );
}

Map<String, dynamic> _$PatientModelToJson(PatientModel instance) =>
    <String, dynamic>{
      'people': instance.people,
      'email': instance.email,
    };
