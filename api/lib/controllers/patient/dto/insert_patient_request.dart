import 'dart:convert';
import 'package:dentistry_api/model/people_model.dart';

import '../../../dentistry_api.dart';

class InsertPatientRequest extends Serializable {
  int idClinic;
  String fullName;
  String numberPhone;
  String dateOfBirth;
  String gender;

  

  Map<String, String> validate() {
    final Map<String, String> validateResult = {};

    return validateResult;
  }

  @override
  Map<String, dynamic> asMap() {
    return {
      'idClinic': idClinic,
      'numberPhone': numberPhone,
      'fullName': fullName,
      'dateOfBirth': dateOfBirth,
      'gender': gender,
    };
  }

  @override
  void readFromMap(Map<String, dynamic> object) {

    idClinic = object['idClinic'] as int;

    numberPhone= object['people']['numberPhone'] as String;

    fullName= object['people']['fullName'] as String;

    dateOfBirth= object['people']['dateOfBirth'] as String;

    gender= object['people']['gender'] as String;

  
    
  }
}
