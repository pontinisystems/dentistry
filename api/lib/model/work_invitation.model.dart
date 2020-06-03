import 'package:aqueduct/aqueduct.dart';

import 'clinic_model.dart';
import 'doctor_model.dart';


class WorkInvitationModel extends ManagedObject<_WorkInvitationModel> implements _WorkInvitationModel {}

@Table(name: 'work_invitation')
class _WorkInvitationModel {

@Column(primaryKey: true, autoincrement: true)
int id;

@Relate(#workInvitationModels)
DoctorModel doctorModel;

@Relate(#workInvitationModels)
ClinicModel clinicModel;

String title;

String message;

@Column(defaultValue: "true")
bool isActive;

}
