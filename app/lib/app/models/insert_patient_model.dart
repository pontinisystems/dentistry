
import 'package:dentistry/app/models/patient_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'insert_patient_model.g.dart';


@JsonSerializable()
class InsertPatientModel {

  PatientModel patient;
  String idClinic;
  InsertPatientModel({
    this.patient,
    this.idClinic,
  });

 factory InsertPatientModel.fromJson(Map<String, dynamic> json) => _$InsertPatientModelFromJson(json);
  Map<String, dynamic> toJson() => _$InsertPatientModelToJson(this);
}
