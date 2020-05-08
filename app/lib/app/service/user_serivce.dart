import 'package:dentistry/app/models/doctor_model.dart';
import 'package:dentistry/app/repositories/interfaces/i_user_repository.dart';

import 'i_user_service.dart';


class UserService implements IUserService{

  IUserRepository userRepository;

  UserService(IUserRepository userRepository){
    this.userRepository =userRepository;
  }

  @override
  Future<void> registerDoctor(DoctorModel insertDoctorModel){
    return  userRepository.registerDoctor(insertDoctorModel);

  }

  @override
  Future<String> getToken() {
   
    return null;
  }

  @override
  Future<bool> isLogged() {
    // TODO: implement isLogged
    return null;
  }

  @override
  Future<bool> login(loginModel) {
    // TODO: implement login
    return null;
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    return null;
  }


}
