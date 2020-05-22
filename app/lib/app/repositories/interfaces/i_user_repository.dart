import 'package:dentistry/app/models/doctor_model.dart';
import 'package:dentistry/app/models/login_model.dart';

abstract class IUserRepository {
  Future<bool> isLogged();
  Future<bool> login(LoginModel loginModel);
  Future<String> getToken();
  Future<void> logout();
  Future<void> registerDoctor(DoctorModel insertDoctorModel);

}
