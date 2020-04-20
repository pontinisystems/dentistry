

import 'package:aqueduct/aqueduct.dart';

class LoginRequest extends Serializable {

  
  String email;
  String password;

  @override
  Map<String, dynamic> asMap() {
    return {
      'email': email,
      'password': password
    };
  }

  @override
  void readFromMap(Map<String, dynamic> object) {
    email = object['email'] as String;
    password = object[ 'password'] as String;
  }
  
  Map<String,String> validate() {
    final Map<String,String> validateResult = {};
    if(email == null || email.isEmpty) {
      validateResult['email'] = 'E-mail Obrigatório';
    }
    
    if(password == null || password.isEmpty) {
      validateResult['password'] = 'Senha Obrigatório';
    }

    return validateResult;
  }

}