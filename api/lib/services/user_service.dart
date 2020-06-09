import 'package:dentistry_api/controllers/login/dto/login_request.dart';
import 'package:dentistry_api/model/doctor_model.dart';
import 'package:dentistry_api/model/patient_model.dart';
import 'package:dentistry_api/model/people_model.dart';
import 'package:dentistry_api/model/user_acess_model.dart';
import 'package:dentistry_api/repositories/user_repository.dart';
import 'package:dentistry_api/utils/cryptography_util.dart';
import 'package:dentistry_api/utils/jwt_utils.dart';

import '../dentistry_api.dart';

class UserService {
  UserService(this.context) : userRepository = UserRepository(context);
  final ManagedContext context;
  final UserRepository userRepository;

  Future<String> login(LoginRequest request) async {
    final String login = request.login;
    final String password = request.password;

    final String passwordEncrypts = Cryptography.encryptPassword(password);

    final DoctorModel doctor = await userRepository.recoverUserByLoginPassword(
        login, passwordEncrypts);
    print(doctor);
    if (doctor != null) {
      return JwtUtils.generateTokenJWT(doctor.userAcess);
    }

    return null;
  }

  Future<void> saveUserDoctor(DoctorModel request) async {
    await userRepository.saveDoctor(request);
  }

  Future<void> saveUserPatient(PatientModel request) async {
    await userRepository.savePatient(request);
  }

  Future<PeopleModel> findId(int id) async {
    return await userRepository.findId(id);
  }
  
  Future<UserAcessModel> findUserAcess(int id) async {
    return await userRepository.findUserAcess(id);
  }
}
