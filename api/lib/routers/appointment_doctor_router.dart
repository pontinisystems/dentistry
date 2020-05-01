
import 'package:dentistry_api/controllers/login/login_controller.dart';
import 'package:dentistry_api/controllers/user/doctor_controller.dart';

import '../dentistry_api.dart';

class AppointmentDoctorRouter {

  static void configure(Router router, ManagedContext context) {
    router
      .route('appointment/doctor')
      .link(() => LoginController(context));
    
   

    
  }

}