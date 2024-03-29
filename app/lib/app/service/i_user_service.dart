import 'package:dentistry/app/models/doctor_model.dart';
import 'package:dentistry/app/models/insert_patient_model.dart';
import 'package:dentistry/app/models/patient_model.dart';
import 'package:dentistry/app/models/user_acess_model.dart';

abstract class IUserService {

  Future<bool> isLogged();
  Future<bool> login(UserAcessModel loginModel);
  Future<String> getToken();
  Future<void> logout();
  Future<void> registerDoctor(DoctorModel insertDoctorModel);
  Future<void> registerPatient(InsertPatientModel insertPatientModel);

}
