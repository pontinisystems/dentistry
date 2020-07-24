import 'package:dentistry/app/core/custom_dio.dart';
import 'package:dentistry/app/models/appointment_result.dart';
import 'package:dentistry/app/models/patient_result.dart';
import 'interfaces/i_patient_repository.dart';

class PatientRepository implements IPatientRepository {

  @override
  Future<List<PatientResult>> getPatient() {
    final dio = CustomDio.withAuthentication().instance;
    return dio.get('v1/patient',queryParameters: {
      "initDate":DateTime.now(),
      "finalDate":DateTime.now(),

    }).then((res) => res.data
        .map<PatientResult>((m) => PatientResult.fromJson(m))
        .toList());
  }
}
