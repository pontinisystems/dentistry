
import 'package:dentistry_api/controllers/login/login_controller.dart';

import '../dentistry_api.dart';


class UserRouter {

  static void configure(Router router, ManagedContext context) {
    router
      .route('user/login')
      .link(() => LoginController(context));
    
 
  }

}