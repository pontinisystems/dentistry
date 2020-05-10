

import 'package:aqueduct/aqueduct.dart';

class InsertUserRequestRequest extends Serializable {

  String login;
  String password;

  @override
  Map<String, dynamic> asMap() {
    return {
      'login': login,
      'password': password
      
    };
  }

  @override
  void readFromMap(Map<String, dynamic> object) {
    login = object['login'] as String;
    password = object['password'] as String;
  }

  Map<String,String> validate() {
    
    final Map<String,String> mapValidate = {};

    if(login == null || login.isEmpty) {
      mapValidate['login'] = 'Login obrigatório';
    }
    
    if(password == null || password.isEmpty) {
      mapValidate['password'] = 'Senha obrigatório';
    }

    return mapValidate;

  }

  

}