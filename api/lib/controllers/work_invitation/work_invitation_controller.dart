import 'dart:async';

import 'package:aqueduct/aqueduct.dart';
import 'package:dentistry_api/controllers/work_invitation/dto/accept_work_invitation_model.dart';
import 'package:dentistry_api/model/message.dart';
import 'package:dentistry_api/model/people_model.dart';
import 'package:dentistry_api/model/user_acess_model.dart';
import 'package:dentistry_api/services/work_invitation_service.dart';

import '../../strings.dart';

class WorkInvitationController extends ResourceController {
  WorkInvitationController(this.context)
      : workInvitationService = WorkInvitationService(context);

  final ManagedContext context;

  final WorkInvitationService workInvitationService;


  @Operation.post()
  Future<Response> acceptWorkInvitation( @Bind.body() AcceptWorkInvitationRequest request) async {
    final validate = request.validateField();
    if (validate.isNotEmpty) {
      return Response.badRequest(body:Message(action: false, technicalMessage: requiredFields, userMessage: doctorExist).toMap());
    }
   try {
      
      await workInvitationService.linkDoctorToClinic(request.idWorkInvitation);
      return Response.ok(Message(
              action: true,
              technicalMessage: successfulRegistration,
              userMessage: userSuccessfullyRegistered)
          .toMap());
    
    
    } catch (e) {
      return Response.serverError(
          body: Message(
              action: false,
              userMessage: unexpectedFailure,
              technicalMessage: serverError).toMap());
    }


  }


  @Operation.get()
  Future<Response> findWorkInvitations() async {
    final UserAcessModel userAcess = request.attachments['userAcess'] as UserAcessModel;


    try {

      return await workInvitationService.findAllBy(userAcess).then((data) {
        return data
            .map((m) => {
                  'id': m.id,
                  'message': m.message,
                  'title': m.title,
                })
            .toList();
      }).then((lista) => Response.ok(lista));
    } catch (e,s) {
      print("errourr"+e.toString());
      return Response.serverError(
          body: Message(
                  action: false,
                  userMessage: unexpectedFailure,
                  technicalMessage: serverError)
              .toMap());
    }
  }
}
