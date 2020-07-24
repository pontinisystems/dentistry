import 'package:dentistry_api/appointment/dto/appointment_result.dart';
import 'package:dentistry_api/appointment/dto/statistic_result.dart';
import 'package:dentistry_api/filter/filter_appointment.dart';
import 'package:dentistry_api/filter/filter_patient.dart';
import 'package:dentistry_api/patient/dto/patient_result.dart';
import 'package:dentistry_api/services/interface/i_patient_service.dart';
import '../dentistry_api.dart';
import 'interface/i_appointment_service.dart';

class PatientService implements IpatientService {
  PatientService(this.context);

  final ManagedContext context;



  @override
  Future<List<PatientResult>> getPatient(FilterPatient filterAppointment) async  {
    final list = <PatientResult>[];

      for (int i = 0; i < 90; i++) {
        list.add(PatientResult(
            dateTime: DateTime.now(), namePatient: "Ewerton Pontini"));
      }


    return await list;
  }
}
