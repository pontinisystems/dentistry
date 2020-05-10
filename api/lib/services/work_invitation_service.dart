import 'package:dentistry_api/excepetions/entity_not_found.dart';
import 'package:dentistry_api/model/user_model.dart';
import 'package:dentistry_api/model/work_invitation.model.dart';
import 'package:dentistry_api/repositories/user_repository.dart';
import 'package:dentistry_api/repositories/work_invitation_repositotry.dart';

import '../dentistry_api.dart';

class WorkInvitationService {
  WorkInvitationService(this.context) : workInvitationRepository = WorkInvitationRepository(context);
  final ManagedContext context;
  final WorkInvitationRepository workInvitationRepository;



 Future<List<WorkInvitationModel>> findAllBy(UserModel userModel) async {

   try{

   return await workInvitationRepository.findAllBy(userModel.id);
   }catch(e){
throw EntityNotFound('');
   }
 }

 
  
}
