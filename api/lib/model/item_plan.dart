import 'package:aqueduct/aqueduct.dart';
import 'package:dentistry_api/model/plan_model.dart';

import 'clinic_model.dart';

class ItemPlanModel extends ManagedObject<_ItemPlanModel>
    implements _ItemPlanModel {}

@Table(name: 'item_plan')
class _ItemPlanModel {
  @Column(primaryKey: true, autoincrement: true)
  int id;

  @Relate(#itemPlan)
  ClinicModel clinicModel;

  @Relate(#itemPlan)
  PlanModel planModel;

}
