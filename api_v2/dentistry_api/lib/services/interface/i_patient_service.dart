

import 'package:dentistry_api/appointment/dto/appointment_result.dart';
import 'package:dentistry_api/appointment/dto/statistic_result.dart';
import 'package:dentistry_api/filter/filter_appointment.dart';
import 'package:dentistry_api/filter/filter_patient.dart';
import 'package:dentistry_api/patient/dto/patient_result.dart';

abstract class IpatientService{


Future<List<PatientResult>> getPatient(FilterPatient filterPatient);

}