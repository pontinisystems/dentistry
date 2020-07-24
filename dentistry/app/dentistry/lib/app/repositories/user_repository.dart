import 'package:dentistry/app/core/custom_dio.dart';
import 'package:dentistry/app/models/user_access_request.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'interfaces/i_user_repository.dart';

class UserRepository implements IUserRepository {
  Future<bool> isLogged() async {
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

  Future<bool> login(UserAccessRequest loginModel) {
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
}
