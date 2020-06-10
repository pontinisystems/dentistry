import 'package:aqueduct/aqueduct.dart';
import 'package:dentistry_api/model/persmission_parameter_model.dart';

class UserAcessModel extends ManagedObject<_UserAcessModel> implements _UserAcessModel {}

@Table(name: 'user_access')
class _UserAcessModel {
  @Column(primaryKey: true, autoincrement: true)
  int id;

  String login;

  String password;

  UserAcessModel user;

  ManagedSet<PerssisionParameterModel> permissions;

}
