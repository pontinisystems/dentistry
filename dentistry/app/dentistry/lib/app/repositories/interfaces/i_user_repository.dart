import 'package:dentistry/app/models/user_access_request.dart';

abstract class IUserRepository {
  Future<bool> isLogged();
  Future<bool> login(UserAccessRequest loginModel);
  Future<String> getToken();
  Future<void> logout();


}
