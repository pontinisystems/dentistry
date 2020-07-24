import 'package:dentistry/app/models/accept_work_invitation_model.dart';
import 'package:dentistry/app/models/patient_result.dart';
import 'package:dentistry/app/models/work_invitation_model.dart';
import 'package:dentistry/app/repositories/interfaces/i_patient_repository.dart';
import 'package:dentistry/app/repositories/interfaces/i_work_invitation_repository.dart';
import 'package:dentistry/app/service/i_work_invitation_service.dart';

import 'i_patient_service.dart';



class PatientService implements IPatientService{

  IPatientRepository patientRepository;

  PatientService(IPatientRepository patientRepository){
    this.patientRepository =patientRepository;
  }



  @override
  Future<List<PatientResult>> fetch() async {
    return await patientRepository.fetch();

  }





}
