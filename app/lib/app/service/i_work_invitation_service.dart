import 'package:dentistry/app/models/accept_work_invitation_model.dart';
import 'package:dentistry/app/models/message.dart';
import 'package:dentistry/app/models/work_invitation_model.dart';

abstract class IWorkInvitationService {

  Future<List<WorkInvitationModel>> fetchMyWorkInvitations();

  Future<void> acceptWork(AcceptWorkInvitationModel acceptWorkInvitationModel);

}
