import 'package:aqueduct/aqueduct.dart';
import 'package:dentistry_api/model/parameter_model.dart';
import 'package:dentistry_api/model/people_model.dart';

class PerssisionParameterModel extends ManagedObject<_PerssisionParameterModel> implements _PerssisionParameterModel {}

@Table(name: 'permission_parameter')
class _PerssisionParameterModel {
  @Column(primaryKey: true, autoincrement: true)
  int id;

  @Relate(#permissions)
  PeopleModel userModel;

  @Relate(#permissions)
  ParameterModel parameterModel;


}
