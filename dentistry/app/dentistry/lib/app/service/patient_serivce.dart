import 'package:dentistry/app/models/appointment_result.dart';
import 'package:dentistry/app/models/patient_result.dart';
import 'package:dentistry/app/models/statistic_result.dart';
import 'package:dentistry/app/repositories/interfaces/i_appointment_repository.dart';
import 'package:dentistry/app/repositories/interfaces/i_patient_repository.dart';
import 'package:dentistry/app/service/interface/i_appointment_service.dart';

import 'interface/i_patient_service.dart';



class PatientService implements IPatientService {

  IPatientRepository patientRepository;

  PatientService(IPatientRepository patientRepository,) {
    this.patientRepository = patientRepository;
  }





  @override
  Future<List<PatientResult>> getPatient() {
    return patientRepository.getPatient();
  }



}


