

import 'package:dentistry_api/appointment/appointment_controller.dart';
import 'package:dentistry_api/appointment/appointment_statistic_controller.dart';
import 'package:dentistry_api/config/jwt_authentication.dart';

import '../dentistry_api.dart';

class AppointmentRouter {

  static void configure(Router router, ManagedContext context) {

    router
        .route('v1/appointment/')
      /*  .link(() => JWTAuthentication(context))*/
        .link(() => AppointmentController(context));

    router
      .route('v1/appointment/statistic')
      /*  .link(() => JWTAuthentication(context))*/
      .link(() => AppointmentStatisticController(context));

  }

}