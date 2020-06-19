import 'package:dentistry/app/core/custom_dio.dart';
import 'package:dentistry/app/models/accept_work_invitation_model.dart';
import 'package:dentistry/app/models/patient_result.dart';
import 'package:dentistry/app/models/work_invitation_model.dart';
import 'package:dentistry/app/repositories/interfaces/i_work_invitation_repository.dart';

import 'interfaces/i_patient_repository.dart';

class PatientRepository implements IPatientRepository {



  @override
  Future<List<PatientResult>> fetch() {
    final dio = CustomDio.withAuthentication().instance;
    return dio.get('v1/patient/patients').then((res) => res.data
        .map<PatientResult>((m) => PatientResult.fromJson(m))
        .toList());
  }
}
