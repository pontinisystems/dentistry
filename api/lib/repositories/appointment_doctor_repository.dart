

import 'package:aqueduct/aqueduct.dart';
import 'package:dentistry_api/model/appointment_doctor_model.dart';

class AppointmentDoctorRepository {
  AppointmentDoctorRepository(this.context);

  final ManagedContext context;

  Future<List<AppointmentDoctorModel>>appointmentDoctorsByFilter() async {

    final query = Query<AppointmentDoctorModel>(context);
    return await query.fetch();
  }

 
}
