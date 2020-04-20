import 'package:aqueduct/aqueduct.dart';
import 'package:dentistry_api/model/appointment_doctor_model.dart';
import 'package:dentistry_api/model/user_model.dart';

import 'address_model.dart';

class PatientModel extends ManagedObject<_PatientModel> implements _PatientModel {}

@Table(name: 'patient')
class _PatientModel {
  @Column(primaryKey: true, autoincrement: true)
  int id;

  @Column(unique: true)
  String crm;

  @Relate(#user,isRequired: true,  onDelete: DeleteRule.cascade,  )
  UserModel user;

  @Relate(#address,isRequired: true,  onDelete: DeleteRule.cascade,  )
  AddressModel address;

    ManagedSet<AppointmentDoctorModel> appointmentDoctors;



}
