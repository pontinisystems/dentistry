import 'package:aqueduct/aqueduct.dart';
import 'package:dentistry_api/model/appointment_doctor_model.dart';
import 'package:dentistry_api/model/people_model.dart';

import 'address_model.dart';

class PatientModel extends ManagedObject<_PatientModel> implements _PatientModel {
  static Map<String,String> validateField(PatientModel doctorModel) {
    final Map<String,String> mapValidate = {};

   

    return mapValidate;

  }
}

@Table(name: 'patient')
class _PatientModel {
  @Column(primaryKey: true, autoincrement: true)
  int id;



  @Relate(#user,isRequired: true,  onDelete: DeleteRule.cascade,  )
  PeopleModel user;

  @Relate(#address,isRequired: true,  onDelete: DeleteRule.cascade,  )
  AddressModel address;

  ManagedSet<AppointmentDoctorModel> appointmentDoctors;



}
