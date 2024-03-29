import 'package:aqueduct/aqueduct.dart';
import 'package:dentistry_api/model/doctor_clinic_model.dart';
import 'package:dentistry_api/model/doctor_model.dart';
import 'package:dentistry_api/model/item_plan.dart';
import 'package:dentistry_api/model/patient_model.dart';
import 'package:dentistry_api/model/work_invitation.model.dart';

import 'address_model.dart';
import 'appointment_doctor_model.dart';

class ClinicModel extends ManagedObject<_ClinicModel> implements _ClinicModel {}

@Table(name: 'clinic')
class _ClinicModel {
  @Column(primaryKey: true, autoincrement: true)
  int id;

  @Column(unique: true)
  String cnpj;

  @Column(unique: true)
  String name;

  @Column(unique: true)
  String description;

  ItemPlanModel itemPlan;

  @Relate(
    #address,
    isRequired: true,
    onDelete: DeleteRule.cascade,
  )
  AddressModel address;

  ManagedSet<AppointmentDoctorModel> appointmentDoctors;
  ManagedSet<DoctorClinicModel> doctorClinics;
  ManagedSet<WorkInvitationModel> workInvitationModels;
  ManagedSet<PatientModel> patients;
}
