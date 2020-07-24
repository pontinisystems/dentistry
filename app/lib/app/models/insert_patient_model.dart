
import 'package:json_annotation/json_annotation.dart';

import 'package:dentistry/app/models/people_model.dart';

part 'insert_patient_model.g.dart';

@JsonSerializable()
class InsertPatientModel {

  String fullName;
  String email;
  String numberPhone;
  String dateOfBirth;
  SelectGender gender;
  int idClinic;
  InsertPatientModel({
    this.fullName,
    this.email,
    this.numberPhone,
    this.dateOfBirth,
    this.gender,
    this.idClinic
  });

 factory InsertPatientModel.fromJson(Map<String, dynamic> json) => _$InsertPatientModelFromJson(json);
  Map<String, dynamic> toJson() => _$InsertPatientModelToJson(this);

  InsertPatientModel copyWith({
    String fullName,
    String email,
    String numberPhone,
    String dateOfBirth,
    SelectGender gender,
    int idClinic,
  }) {
    return InsertPatientModel(
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      numberPhone: numberPhone ?? this.numberPhone,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      gender: gender ?? this.gender,
      idClinic: idClinic ?? this.idClinic,
    );
  }
}
