import 'package:aqueduct/aqueduct.dart';
import 'package:dentistry_api/model/persmission_parameter_model.dart';

class ParameterModel extends ManagedObject<_ParameterModel> implements _ParameterModel {}

@Table(name: 'parameter')
class _ParameterModel {
  @Column(primaryKey: true, autoincrement: true)
  int id;

  String name;

  String description;

  @Column(defaultValue: 'now()')
  DateTime lastModifieldDate;
  
  @Column(defaultValue: 'now()')
  DateTime createdDate;

  ManagedSet<PerssisionParameterModel> permissions;

}
