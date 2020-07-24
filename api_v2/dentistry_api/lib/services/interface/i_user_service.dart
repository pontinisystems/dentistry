import 'package:dentistry_api/login/dto/login_request.dart';
import 'package:dentistry_api/model/user_acess_model.dart';

abstract class IUserService {

  Future<String> login(LoginRequest request);

  Future<UserAcessModel> findUserAcess(int id);
}
