import 'package:aqueduct/aqueduct.dart';

import 'clinic_model.dart';
import 'doctor_model.dart';

class DoctorClinicModel extends ManagedObject<_DoctorClinicModel> implements _DoctorClinicModel {}
@Table(name: 'doctor_clinic')
class _DoctorClinicModel {
  @primaryKey
  int id;  

  @Relate(#doctorClinics)
  ClinicModel clinic;

  @Relate(#doctorClinics)
  DoctorModel doctor;




}