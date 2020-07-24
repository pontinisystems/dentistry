// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppointmentResult _$AppointmentResultFromJson(Map<String, dynamic> json) {
  return AppointmentResult(
    namePatient: json['namePatient'] as String,
    dateTime: DateTime.parse(json['dateTime'] as String),
  );
}

Map<String, dynamic> _$AppointmentResultToJson(AppointmentResult instance) =>
    <String, dynamic>{
      'namePatient': instance.namePatient,
      'dateTime': instance.dateTime.toIso8601String(),
    };
