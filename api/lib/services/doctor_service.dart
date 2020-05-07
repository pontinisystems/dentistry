import 'package:dentistry_api/repositories/clinic_repository.dart';
import 'package:dentistry_api/repositories/plan_repository.dart.dart';

import '../dentistry_api.dart';

class DoctorService {
  DoctorService(this.context)
      : clinicRepository = ClinicRepository(context),
        planRepository = PlanRepository(context);
  final ManagedContext context;
  final ClinicRepository clinicRepository;
  final PlanRepository planRepository;

  Future<bool> isLimitSizeDoctor(int clinicId) async {


    return await clinicRepository.find(clinicId).then((clinic) {
      if (clinic.itemPlan.planModel.doctorLimit < 10) {
        return true;
      } else {
        return false;
      }
    });
  }
}
