
import 'package:dentistry_api/controllers/login/login_controller.dart';

import '../dentistry_api.dart';

class AppointmentDoctorRouter {

  static void configure(Router router, ManagedContext context) {
    router
      .route('api/appointment/doctor')
      .link(() => LoginController(context));
    
   

    
  }

}