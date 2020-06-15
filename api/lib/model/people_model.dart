import 'package:aqueduct/aqueduct.dart';
import 'package:dentistry_api/model/persmission_parameter_model.dart';

import 'address_model.dart';

class PeopleModel extends ManagedObject<_PeopleModel> implements _PeopleModel {}

@Table(name: 'people')
class _PeopleModel {
  @Column(primaryKey: true, autoincrement: true)
  int id;
  
  String numberPhone;

  String fullName;

  String dateOfBirth;

  SelectGender gender;

 @Relate(
    #address,
    isRequired: false,
    onDelete: DeleteRule.cascade,
  )
  AddressModel address;
  
  PeopleModel people;

}
enum SelectGender { Male, Female }