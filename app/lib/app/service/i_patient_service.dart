import 'package:dentistry/app/models/accept_work_invitation_model.dart';
import 'package:dentistry/app/models/message.dart';
import 'package:dentistry/app/models/patient_model.dart';
import 'package:dentistry/app/models/patient_result.dart';
import 'package:dentistry/app/models/work_invitation_model.dart';

abstract class IPatientService {

  Future<List<PatientResult>> fetch();


}
