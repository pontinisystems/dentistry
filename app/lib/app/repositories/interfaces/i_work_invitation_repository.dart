
import 'package:dentistry/app/models/work_invitation_model.dart';

abstract class IWorkInvitationRepository {

  Future<List<WorkInvitationModel>> fetchMyWorkInvitations();
}
