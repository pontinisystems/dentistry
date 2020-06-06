import 'package:aqueduct/aqueduct.dart';

class LoginModel extends ManagedObject<_LoginModel> implements _LoginModel {}

@Table(name: 'login')
class _LoginModel {
  @Column(primaryKey: true, autoincrement: true)
  int id;

  String email;

  String password;

  LoginModel login;
}
