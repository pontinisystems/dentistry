import 'package:dentistry/app/models/user_access_request.dart';

abstract class IUserService {

  Future<bool> isLogged();
  Future<bool> login(UserAccessRequest loginModel);
  /*
  Future<String> getToken();
  Future<void> logout();
  Future<void> registerDoctor(DoctorModel insertDoctorModel);
  Future<void> registerPatient(InsertPatientModel insertPatientModel);*/

}
