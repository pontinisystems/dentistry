
import 'package:dentistry_api/controllers/patient/patient_controller.dart';

import '../dentistry_api.dart';


class PatientRouter {

  static void configure(Router router, ManagedContext context) {
   
    
     router.route('v1/patient/register')
    .link(()=>PatientController(context)); 
  }

}