import 'package:dentistry_api/model/user_acess_model.dart';

abstract class IUserRepository {

Future<UserAcessModel> recoverUserByLoginPassword(String login , String password);
Future<UserAcessModel> findUserAcess(int id);

}
