import 'package:dentistry/app/repositories/interfaces/i_user_repository.dart';

import 'interface/i_user_service.dart';


class UserService implements IUserService {

  IUserRepository userRepository;

  UserService(IUserRepository userRepository,) {
    this.userRepository = userRepository;
  }

/*  @override
  Future<void> registerDoctor(DoctorModel insertDoctorModel){
    return  userRepository.registerDoctor(insertDoctorModel);

  }*/
/*
  @override
  Future<String> getToken() {
   
    return  userRepository.getToken();
  }*/

  @override
  Future<bool> isLogged() {
    return userRepository.isLogged();
  }

  @override
  Future<bool> login(loginModel) {
    return userRepository.login(loginModel);
  }
/*
/*
  @override
  Future<void> logout() async {
     userRepository.logout();
  }*/

/*
  @override
  Future<void> registerPatient(InsertPatientModel insertPatientModel) {
    print('service');
   return  userRepository.registerPatient(insertPatientModel);

  }

*/




}*/
}


