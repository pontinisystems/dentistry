import 'dart:ffi';
import 'package:json_annotation/json_annotation.dart';

part 'appointment_result.g.dart';

@JsonSerializable(nullable: false)
class AppointmentResult {
  AppointmentResult({this.namePatient, this.dateTime});

  factory AppointmentResult.fromJson(Map<String, dynamic> json) =>
      _$AppointmentResultFromJson(json);

  Map<String, dynamic> toJson() => _$AppointmentResultToJson(this);


  final String namePatient;
  final DateTime dateTime;



}
