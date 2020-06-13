import 'package:dentistry_api/excepetions/entity_not_found.dart';
import 'package:dentistry_api/model/clinic_model.dart';
import 'package:dentistry_api/model/people_model.dart';
import 'package:dentistry_api/repositories/clinic_repository.dart';
import 'package:dentistry_api/repositories/plan_repository.dart.dart';
import 'package:dentistry_api/repositories/user_repository.dart';
import 'package:dentistry_api/strings.dart';
import '../dentistry_api.dart';

class PatientService {
  PatientService(this.context)
      : clinicRepository = ClinicRepository(context),
         userRepository = UserRepository(context),
        planRepository = PlanRepository(context);
  final ManagedContext context;
  final ClinicRepository clinicRepository;
  final PlanRepository planRepository;
  final UserRepository userRepository;

  Future<bool> isLimitSizeDoctor(int clinicId) async {
    try {
      final ClinicModel clinic = await clinicRepository.find(clinicId);
      if (clinic.itemPlan.planModel.doctorLimit < 5) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      throw const EntityNotFound(entityNotFound);
    }

  }



}
