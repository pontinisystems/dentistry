import 'package:aqueduct/aqueduct.dart';

class UserAcessModel extends ManagedObject<_UserAcessModel> implements _UserAcessModel {}

@Table(name: 'user_access')
class _UserAcessModel {
  @Column(primaryKey: true, autoincrement: true)
  int id;

  String login;

  String password;

  UserAcessModel user;
}
