import 'package:dentistry/app/models/work_invitation_model.dart';

abstract class IWorkInvitationService {

  Future<List<WorkInvitationModel>> fetchMyWorkInvitations();
  
}
