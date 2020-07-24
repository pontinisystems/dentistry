
import 'package:dentistry_api/login/login_controller.dart';

import '../dentistry_api.dart';


class UserRouter {

  static void configure(Router router, ManagedContext context) {
    router
      .route('v1/user/login')
      .link(() => LoginController(context));
    
 
  }

}