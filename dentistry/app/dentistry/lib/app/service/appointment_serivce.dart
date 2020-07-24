import 'package:dentistry/app/models/appointment_result.dart';
import 'package:dentistry/app/models/statistic_result.dart';
import 'package:dentistry/app/repositories/interfaces/i_appointment_repository.dart';
import 'package:dentistry/app/service/interface/i_appointment_service.dart';



class AppointmentService implements IAppointmentService {

  IAppointmentRepository appointmentRepository;

  AppointmentService(IAppointmentRepository appointmentRepository,) {
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


