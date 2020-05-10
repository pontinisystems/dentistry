import 'package:aqueduct/aqueduct.dart';

import 'address_model.dart';

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

 @Relate(
    #address,
    isRequired: true,
    onDelete: DeleteRule.cascade,
  )
  AddressModel address;
  
  UserModel user;
}
