import 'dart:async';

import 'package:aqueduct/aqueduct.dart';
import 'package:dentistry_api/model/message.dart';
import 'package:dentistry_api/model/user_model.dart';
import 'package:dentistry_api/model/work_invitation.model.dart';
import 'package:dentistry_api/services/user_service.dart';
import 'package:dentistry_api/services/work_invitation_service.dart';

class WorkInvitationController extends ResourceController {
  WorkInvitationController(this.context)
      : workInvitationService = WorkInvitationService(context);

  final ManagedContext context;

  final WorkInvitationService workInvitationService;

  @Operation.get()
  Future<Response> findWorkInvitations() async {
    final UserModel user = request.attachments['user'] as UserModel;
    return  workInvitationService.findAllBy(user).then((data) {
        return data.map((m) => {
          'id': m.id,
          'message' : m.message,
          'title': m.title,
         
        }).toList();
        
      }).then((lista)=> Response.ok(lista));
    
  }
}
