import 'package:aqueduct/aqueduct.dart';

class AddressModel extends ManagedObject<_AddressModel>
    implements _AddressModel {}

@Table(name: 'address')
class _AddressModel {
  @Column(primaryKey: true, autoincrement: true)
  int id;

  
  String city;

  String neighborhood;

  String street;
  
  String number;


  AddressModel address;
  
}
