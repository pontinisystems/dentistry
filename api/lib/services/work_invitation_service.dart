import 'package:dentistry_api/model/doctor_model.dart';
import 'package:dentistry_api/model/user_model.dart';
import 'package:dentistry_api/model/work_invitation.model.dart';
import 'package:dentistry_api/repositories/user_repository.dart';
import 'package:dentistry_api/repositories/work_invitation_repositotry.dart';

import '../dentistry_api.dart';

class WorkInvitationService {
  WorkInvitationService(this.context)
      : workInvitationRepository = WorkInvitationRepository(context),
        userRepository = UserRepository(context);
  final ManagedContext context;
  final WorkInvitationRepository workInvitationRepository;
  final UserRepository userRepository;

  Future<List<WorkInvitationModel>> findAllBy(UserModel userModel) async {
      final DoctorModel doctorModel = await userRepository.findDoctorId(userModel.id);
      return  workInvitationRepository.findAllBy(doctorModel.id);
    
  }
}
