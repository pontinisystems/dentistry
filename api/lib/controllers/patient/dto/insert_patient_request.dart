import 'dart:convert';

import 'package:dentistry_api/model/patient_model.dart';
import 'package:dentistry_api/model/people_model.dart';

import '../../../dentistry_api.dart';

class InsertPatientRequest extends Serializable {
  String fullName;
  String email;
  String numberPhone;
  String dateOfBirth;
  String gender;
  int idClinic;

  Map<String, String> validate() {
    final Map<String, String> validateResult = {};

    return validateResult;
  }

  @override
  Map<String, dynamic> asMap() {
    return {
      'fullName': fullName,
      'email': email,
      'numberPhone': numberPhone,
      'dateOfBirth': dateOfBirth,
      'gender': gender,
      'idClinic': int,
    };
  }

  @override
  void readFromMap(Map<String, dynamic> object) {
    print("==============");
    print(object);
    print("==============");

    fullName = object['fullName'] as String;
    email = object['email'] as String;
    numberPhone = object['numberPhone'] as String;
    dateOfBirth = object['dateOfBirth'] as String;
    gender = object['gender'] as String;
    idClinic = object['idClinic'] as int;

      print("======FIM========");

  }

  PatientModel toPatientModel(){
    var patient =PatientModel();
    patient.people= PeopleModel();
    

    patient.email =email;
   
  }

}
