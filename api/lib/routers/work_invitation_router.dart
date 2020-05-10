
import 'package:dentistry_api/config/jwt_authentication.dart';
import 'package:dentistry_api/controllers/work_invitation/work_invitation_controller.dart';

import '../dentistry_api.dart';

class WorkInvitationRouter {

  static void configure(Router router, ManagedContext context) {
    router
      .route('v1/work/myinvitations')
      .link(() => JWTAuthentication(context))
      .link(() => WorkInvitationController(context));
    
    

    
  }

}