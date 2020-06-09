import 'package:dentistry/app/core/custom_dio.dart';
import 'package:dentistry/app/models/doctor_model.dart';
import 'package:dentistry/app/models/patient_model.dart';
import 'package:dentistry/app/models/user_acess_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'interfaces/i_user_repository.dart';

class UserRepository implements IUserRepository {
  
  Future<bool> isLogged() async {
    print("vamos dar as maos ");
    final String token = await this.getToken();

    if (token == null) {
      return false;
    } else {
      return true;
    }
  }

  Future<String> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }

  Future<void> logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }

  Future<bool> login(UserAcessModel loginModel) {
    final dio = CustomDio().instance;
    return dio
        .post('v1/user/login', data: loginModel.toJson())
        .then((res) async {
      final String token = res.data['token'];
      if (token != null) {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('token', token);
        return true;
      }

      return false;
    });
  }

  Future<void> registerDoctor(DoctorModel insertDoctorModel) async {
    print(insertDoctorModel.people.fullName);
    print(insertDoctorModel.cro);
    print(insertDoctorModel.userAcess.login);
    final dio = CustomDio().instance;
    return dio.post('v1/doctor/register', data:{
      'cro':insertDoctorModel.cro,
      'people':insertDoctorModel.people,
      'userAcess':insertDoctorModel.userAcess
    }
     
    );
  }

  @override
  Future<void> registerPatient(PatientModel insertPatientModel) {
    final dio = CustomDio().instance;
    return dio.post('v1/patient/register', data: {
      'user': insertPatientModel.people.toJson(),
     
    });
  }
}
