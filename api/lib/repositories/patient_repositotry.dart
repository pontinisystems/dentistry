import 'package:dentistry_api/model/patient_model.dart';

import '../dentistry_api.dart';

class PatientRepository {
  PatientRepository(this.context);

  final ManagedContext context;

  Future<List<PatientModel>> findAllBy(int idClinic) async {
    final query = Query<PatientModel>(context);

    return await query.fetch();
  }

 


 
}
