// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insert_patient_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InsertPatientModel _$InsertPatientModelFromJson(Map<String, dynamic> json) {
  return InsertPatientModel(
    patient: json['patient'] == null
        ? null
        : PatientModel.fromJson(json['patient'] as Map<String, dynamic>),
    idClinic: json['idClinic'] as int,
  );
}

Map<String, dynamic> _$InsertPatientModelToJson(InsertPatientModel instance) =>
    <String, dynamic>{
      'patient': instance.patient,
      'idClinic': instance.idClinic,
    };
