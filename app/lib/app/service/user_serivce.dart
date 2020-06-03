import 'package:dentistry/app/models/doctor_model.dart';
import 'package:dentistry/app/models/patient_model.dart';
import 'package:dentistry/app/repositories/interfaces/i_user_repository.dart';

import 'i_user_service.dart';


class UserService implements IUserService{

  IUserRepository userRepository;

  UserService(IUserRepository userRepository,){
    this.userRepository =userRepository;
  }

  @override
  Future<void> registerDoctor(DoctorModel insertDoctorModel){
    return  userRepository.registerDoctor(insertDoctorModel);

  }

  @override
  Future<String> getToken() {
   
    return  userRepository.getToken();
  }

  @override
  Future<bool> isLogged() {
    return userRepository.isLogged();
  }

  @override
  Future<bool> login(loginModel) {
    return userRepository.login(loginModel);
  }

  @override
  Future<void> logout() async {
     userRepository.logout();
  }

  @override
  Future<void> registerPatient(PatientModel insertPatientModel) {
   return  userRepository.registerPatient(insertPatientModel);

  }





}
