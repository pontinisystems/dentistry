// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insert_doctor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InsertDoctorModel _$InsertDoctorModelFromJson(Map<String, dynamic> json) {
  return InsertDoctorModel(
    userModel: json['user'] == null
        ? null
        : UserModel.fromJson(json['user'] as Map<String, dynamic>),
    cro: json['cro'] as String,
  );
}

Map<String, dynamic> _$InsertDoctorModelToJson(InsertDoctorModel instance) =>
    <String, dynamic>{
      'user': instance.userModel,
      'cro': instance.cro,
    };
