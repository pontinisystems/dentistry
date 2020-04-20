import 'package:aqueduct/aqueduct.dart';

class AddressModel extends ManagedObject<_AddressModel>
    implements _AddressModel {}

@Table(name: 'address')
class _AddressModel {
  @Column(primaryKey: true, autoincrement: true)
  int id;

  @Column(unique: true)
  String city;

  @Column(unique: true)
  String neighborhood;

  @Column(unique: true)
  String street;
  
  @Column(unique: true)
  String number;


  AddressModel address;
  
}
