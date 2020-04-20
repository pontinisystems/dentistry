
import 'package:dentistry_api/controllers/login/login_controller.dart';
import 'package:dentistry_api/controllers/user/doctor_controller.dart';

import '../dentistry_api.dart';

class DoctorRouter {

  static void configure(Router router, ManagedContext context) {
    router
      .route('doctor/login')
      .link(() => LoginController(context));
    
    router.route('doctor/register')
    .link(()=>DoctorController(context)); 


    
  }

}