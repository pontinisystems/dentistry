import 'package:aqueduct/aqueduct.dart';
import 'package:dentistry_api/model/persmission_parameter_model.dart';

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
    isRequired: false,
    onDelete: DeleteRule.cascade,
  )
  AddressModel address;
  
  UserModel user;

  ManagedSet<PerssisionParameterModel> permissions;
}
