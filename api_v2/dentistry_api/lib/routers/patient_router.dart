

import 'package:dentistry_api/appointment/appointment_controller.dart';
import 'package:dentistry_api/appointment/appointment_statistic_controller.dart';
import 'package:dentistry_api/config/jwt_authentication.dart';
import 'package:dentistry_api/patient/patient_controller.dart';

import '../dentistry_api.dart';

class PatientRouter {

  static void configure(Router router, ManagedContext context) {

    router
        .route('v1/patient/')
      /*  .link(() => JWTAuthentication(context))*/
        .link(() => PatientController(context));


  }

}