import 'package:aqueduct/aqueduct.dart';
import 'package:dentistry_api/model/appointment_doctor_model.dart';
import 'package:dentistry_api/model/people_model.dart';

import 'address_model.dart';
import 'clinic_model.dart';

class PatientModel extends ManagedObject<_PatientModel>
    implements _PatientModel {
   Map<String, String> validateField() {
    final Map<String, String> validateResult = {};

    return validateResult;
  }


      
    }

@Table(name: 'patient')
class _PatientModel {
  @Column(primaryKey: true, autoincrement: true)
  int id;

  @Relate(
    #people,
    isRequired: true,
    onDelete: DeleteRule.cascade,
  )
  PeopleModel people;

  String email;


  ManagedSet<AppointmentDoctorModel> appointmentDoctors;


  @Relate(#patients)
  ClinicModel clinic;


   
}
