import 'package:dentistry/app/models/appointment_result.dart';
import 'package:dentistry/app/models/patient_result.dart';
import 'package:dentistry/app/models/statistic_result.dart';
import 'package:dentistry/app/repositories/interfaces/i_appointment_repository.dart';
import 'package:dentistry/app/service/interface/i_appointment_service.dart';

import 'interface/i_patient_service.dart';



class PatientService implements IPatientService {

  IAppointmentRepository appointmentRepository;

  PatientService(IAppointmentRepository appointmentRepository,) {
    this.appointmentRepository = appointmentRepository;
  }

/*  @override
  Future<void> registerDoctor(DoctorModel insertDoctorModel){
    return  userRepository.registerDoctor(insertDoctorModel);

  }*/
/*
  @override
  Future<String> getToken() {
   
    return  userRepository.getToken();
  }*/



  @override
  Future<StatisticResult> getStatistic() async {
    return await appointmentRepository.getStatistic();
  }

  @override
  Future<List<AppointmentResult>> getAppointment() async {
    return await appointmentRepository.getAppointment();
  }

  @override
  Future<List<PatientResult>> getPatient() {
    // TODO: implement getPatient
    throw UnimplementedError();
  }


/*
/*
  @override
  Future<void> logout() async {
     userRepository.logout();
  }*/

/*
  @override
  Future<void> registerPatient(InsertPatientModel insertPatientModel) {
    print('service');
   return  userRepository.registerPatient(insertPatientModel);

  }

*/




}*/
}


