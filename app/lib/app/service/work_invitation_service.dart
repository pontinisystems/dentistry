import 'package:dentistry/app/models/work_invitation_model.dart';
import 'package:dentistry/app/repositories/interfaces/i_work_invitation_repository.dart';
import 'package:dentistry/app/service/i_work_invitation_service.dart';



class WorkInvitationService implements IWorkInvitationService{

  IWorkInvitationRepository workInvitationRepository;

  WorkInvitationService(IWorkInvitationRepository workInvitationRepository){
    this.workInvitationRepository =workInvitationRepository;
  }

  @override
  Future<List<WorkInvitationModel>> fetchMyWorkInvitations() async {
    return await workInvitationRepository.fetchMyWorkInvitations();
  }

  



}
