import 'package:dentistry/app/models/doctor_model.dart';
import 'package:dentistry/app/models/patient_model.dart';
import 'package:dentistry/app/models/user_acess_model.dart';

abstract class IUserRepository {
  Future<bool> isLogged();
  Future<bool> login(UserAcessModel loginModel);
  Future<String> getToken();
  Future<void> logout();
  Future<void> registerDoctor(DoctorModel insertDoctorModel);
  Future<void> registerPatient(PatientModel insertPatientModel);

}
