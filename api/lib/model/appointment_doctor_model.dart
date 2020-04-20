import 'package:aqueduct/aqueduct.dart';
import 'package:dentistry_api/model/clinic_model.dart';
import 'package:dentistry_api/model/patient_model.dart';
import 'package:dentistry_api/model/procedure_model.dart';

import 'address_model.dart';
import 'doctor_model.dart';

class AppointmentDoctorModel extends ManagedObject<_AppointmentDoctorModel>
    implements _AppointmentDoctorModel {}

@Table(name: 'appointment_doctor')
class _AppointmentDoctorModel {
  @Column(primaryKey: true, autoincrement: true)
  int id;

  @Relate(#appointmentDoctors)
  ClinicModel clinic;

  @Relate(#appointmentDoctors)
  DoctorModel doctor;

  @Relate(#appointmentDoctors)
  PatientModel patient;

  @Relate(
    #address,
    isRequired: true,
    onDelete: DeleteRule.cascade,
  )
  AddressModel address;

  ManagedSet<ProcedureModel> procedures;
}
