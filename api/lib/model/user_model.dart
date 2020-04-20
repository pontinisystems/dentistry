import 'package:aqueduct/aqueduct.dart';

class UserModel extends ManagedObject<_UserModel> implements _UserModel {}

@Table(name: 'user_person')
class _UserModel {
  @Column(primaryKey: true, autoincrement: true)
  int id;

  String email;

  String password;

  String numberPhone;

  String fullName;

  String dateOfBirth;

  String gender;


  UserModel user;
}
