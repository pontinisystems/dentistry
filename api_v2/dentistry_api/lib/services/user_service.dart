import 'package:dentistry_api/login/dto/login_request.dart';
import 'package:dentistry_api/model/user_acess_model.dart';
import 'package:dentistry_api/repositories/interfaces/i_user_repository.dart';
import 'package:dentistry_api/repositories/user_repository.dart';
import 'package:dentistry_api/utils/cryptography_util.dart';
import 'package:dentistry_api/utils/jwt_utils.dart';
import '../dentistry_api.dart';
import 'interface/i_user_service.dart';




class UserService implements IUserService {
  UserService(this.context) : userRepository = UserRepository(context);

  final ManagedContext context;
  final IUserRepository userRepository;

  @override
  Future<String> login(LoginRequest request) async {
    final String login = request.login;
    final String password = request.password;

    final String passwordEncrypts = Cryptography.encryptPassword(password);

    final UserAcessModel userAccess = await userRepository.recoverUserByLoginPassword(
        login, passwordEncrypts);
    if (userAccess != null) {

      return JwtUtils.generateTokenJWT(userAccess);
    }
    return null;
  }

  @override
  Future<UserAcessModel> findUserAcess(int id) async {
    return await userRepository.findUserAcess(id);
  }







}