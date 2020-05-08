import 'package:aqueduct/aqueduct.dart';

import 'item_plan.dart';

class PlanModel extends ManagedObject<_PlanModel>
    implements _PlanModel {}

@Table(name: 'plan')
class _PlanModel {
  @Column(primaryKey: true, autoincrement: true)
  int id;

  @Column( unique: true)
  int patientLimit;

  @Column(unique: true)
  int doctorLimit;

  @Column(unique: true)
  double value;


  ItemPlanModel itemPlan;

}
