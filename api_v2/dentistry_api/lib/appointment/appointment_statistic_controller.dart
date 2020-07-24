import 'dart:async';

import 'package:aqueduct/aqueduct.dart';
import 'package:dentistry_api/model/message.dart';
import 'package:dentistry_api/model/user_acess_model.dart';
import 'package:dentistry_api/services/appointment_service.dart';
import 'package:dentistry_api/services/interface/i_appointment_service.dart';

import '../strings.dart';

class AppointmentStatisticController extends ResourceController {
  AppointmentStatisticController(this.context)
      : appoitmentService = AppointmentService(context);

  final ManagedContext context;
  final IAppointmentService appoitmentService;

  @Operation.get()
  Future<Response> getStatistic() async {
    try {
      final UserAcessModel userAcess =
          request.attachments['userAcess'] as UserAcessModel;

      final statistic = await appoitmentService.getStatistic();

      return Response.ok(statistic.toJson());
    } catch (e, s) {
      print(e.toString());
      return Response.serverError(

          body: Message(
                  action: false,
                  userMessage: unexpectedFailure,
                  technicalMessage: serverError)
              .toMap());
    }
  }


}
