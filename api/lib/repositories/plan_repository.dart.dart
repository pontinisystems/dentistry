
import 'package:dentistry_api/model/plan_model.dart';

import '../dentistry_api.dart';

class PlanRepository {
  PlanRepository(this.context);

  final ManagedContext context;



  Future<PlanModel> find(int id) async {
    final query = Query<PlanModel>(context)
      ..where((plan) => plan.id).equalTo(id);
    return await query.fetchOne();
  }
}
