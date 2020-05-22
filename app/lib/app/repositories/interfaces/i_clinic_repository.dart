import 'package:dentistry/app/models/doctor_model.dart';
import 'package:dentistry/app/models/login_model.dart';

abstract class IClinicRepository {
  Future<bool> isLogged();
  
}
