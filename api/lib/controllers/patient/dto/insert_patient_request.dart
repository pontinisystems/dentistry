import 'dart:convert';

import 'package:dentistry_api/model/patient_model.dart';

import '../../../dentistry_api.dart';

class InsertPatientRequest extends Serializable {
  String idClinic;
  PatientModel patient;
  InsertPatientRequest({
    this.idClinic,
    this.patient,
  });

  Map<String, String> validate() {
    final Map<String, String> validateResult = {};

    return validateResult;
  }

  @override
  Map<String, dynamic> asMap() {
    return {'idClinic': idClinic, 'patient': patient};
  }

  @override
  void readFromMap(Map<String, dynamic> object) {
    idClinic = object['idWorkInvitation'] as String;
    patient = object['isAccepet'] as PatientModel;
  }
}
