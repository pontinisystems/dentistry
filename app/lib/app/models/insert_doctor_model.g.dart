// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insert_doctor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InsertDoctorModel _$InsertDoctorModelFromJson(Map<String, dynamic> json) {
  return InsertDoctorModel(
    peopleModel: json['people'] == null
        ? null
        : PeopleModel.fromJson(json['people'] as Map<String, dynamic>),
    loginModel: json['loginModel'] == null
        ? null
        : UserAcessModel.fromJson(json['loginModel'] as Map<String, dynamic>),
    cro: json['cro'] as String,
  );
}

Map<String, dynamic> _$InsertDoctorModelToJson(InsertDoctorModel instance) =>
    <String, dynamic>{
      'people': instance.peopleModel,
      'loginModel': instance.loginModel,
      'cro': instance.cro,
    };
