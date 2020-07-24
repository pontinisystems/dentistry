import 'package:dentistry/app/models/appointment_result.dart';
import 'package:dentistry/app/models/patient_result.dart';
import 'package:dentistry/app/models/statistic_result.dart';

abstract class IPatientRepository {

  Future<List<PatientResult>> getPatient();

}
