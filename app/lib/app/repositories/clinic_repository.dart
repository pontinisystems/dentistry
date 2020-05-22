import 'package:dentistry/app/core/custom_dio.dart';
import 'package:dentistry/app/models/doctor_model.dart';
import 'package:dentistry/app/models/login_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'interfaces/i_user_repository.dart';

class UserRepository implements IUserRepository {
 
  Future<bool> isLogged() async {
    final String token = await this.getToken();
    return token != null;
  }

  Future<String> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }

  Future<void> logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }

  Future<bool> login(LoginModel loginModel) {
    final dio = CustomDio().instance;
    return dio.post('v1/user/login', data: loginModel.toJson()).then((res) async {
      final String token = res.data['token'];
      print(token);
      if (token != null) {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('token', token);
        return true;
      }

      return false;
    });
  }

  Future<void> registerDoctor(DoctorModel insertDoctorModel) async {
    final dio = CustomDio().instance;
    return dio.post('v1/doctor/register',data:{
    'user': insertDoctorModel.user.toJson(),
    'cro':insertDoctorModel.cro,

    });
    
    
  }

 Future<bool> testeBool() async {
   return true;
  }

}
