
import 'package:dentistry_api/model/clinic_model.dart';

import '../dentistry_api.dart';

class ClinicRepository {
  ClinicRepository(this.context);

  final ManagedContext context;



  Future<ClinicModel> find(int id) async {
    final query = Query<ClinicModel>(context)
      ..where((clinic) => clinic.id).equalTo(id);
    return await query.fetchOne();
  }
}
