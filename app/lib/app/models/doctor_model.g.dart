// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorModel _$DoctorModelFromJson(Map<String, dynamic> json) {
  return DoctorModel(
    people: PeopleModel.fromJson(json['people'] as Map<String, dynamic>),
    cro: json['cro'] as String,
    userAcess:
        UserAcessModel.fromJson(json['userAcess'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DoctorModelToJson(DoctorModel instance) =>
    <String, dynamic>{
      'people': instance.people,
      'cro': instance.cro,
      'userAcess': instance.userAcess,
    };
