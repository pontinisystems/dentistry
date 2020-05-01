
import 'package:aqueduct/aqueduct.dart';
import 'package:dentistry_api/controllers/login/dto/login_request.dart';
import 'package:dentistry_api/model/appointment_doctor_model.dart';
import 'package:dentistry_api/repositories/appointment_doctor_repository.dart';


class AppointmentDoctorService {

  AppointmentDoctorService(this.context) : repository = AppointmentDoctorRepository(context);
  final ManagedContext context;
  final AppointmentDoctorRepository repository;

  Future<List<AppointmentDoctorModel>> appointmentDoctorsByFilter(LoginRequest request) async {
   

    return await repository.appointmentDoctorsByFilter();
  }

 


}
