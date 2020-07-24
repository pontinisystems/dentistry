import 'dart:ffi';
import 'package:json_annotation/json_annotation.dart';

part 'patient_result.g.dart';

@JsonSerializable(nullable: false)
class PatientResult {
  PatientResult({this.namePatient, this.dateTime});

  factory PatientResult.fromJson(Map<String, dynamic> json) =>
      _$PatientResultFromJson(json);

  Map<String, dynamic> toJson() => _$PatientResultToJson(this);


  final String namePatient;
  final DateTime dateTime;



}
