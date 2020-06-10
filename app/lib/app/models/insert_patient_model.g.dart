// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insert_patient_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InsertPatientModel _$InsertPatientModelFromJson(Map<String, dynamic> json) {
  return InsertPatientModel(
    patienteModel: json['patienteModel'] == null
        ? null
        : PatientModel.fromJson(json['patienteModel'] as Map<String, dynamic>),
    idClinic: json['idClinic'] as String,
  );
}

Map<String, dynamic> _$InsertPatientModelToJson(InsertPatientModel instance) =>
    <String, dynamic>{
      'patienteModel': instance.patienteModel,
      'idClinic': instance.idClinic,
    };
