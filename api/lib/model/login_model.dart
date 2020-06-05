import 'package:aqueduct/aqueduct.dart';
import 'package:dentistry_api/model/user_model.dart';

import 'doctor_model.dart';


class LoginModel extends ManagedObject<_LoginModel> implements _LoginModel {}

@Table(name: 'login')
class _LoginModel {
  @Column(primaryKey: true, autoincrement: true)
  int id;

  String email;

  String password;


}
