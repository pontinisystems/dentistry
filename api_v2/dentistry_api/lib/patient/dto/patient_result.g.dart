// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatientResult _$PatientResultFromJson(Map<String, dynamic> json) {
  return PatientResult(
    namePatient: json['namePatient'] as String,
    dateTime: DateTime.parse(json['dateTime'] as String),
  );
}

Map<String, dynamic> _$PatientResultToJson(PatientResult instance) =>
    <String, dynamic>{
      'namePatient': instance.namePatient,
      'dateTime': instance.dateTime.toIso8601String(),
    };
