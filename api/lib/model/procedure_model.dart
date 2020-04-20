import 'package:aqueduct/aqueduct.dart';

import 'appointment_doctor_model.dart';

class ProcedureModel extends ManagedObject<_ProcedureModel>
    implements _ProcedureModel {}

@Table(name: 'procedure')
class _ProcedureModel {
  @Column(primaryKey: true, autoincrement: true)
  int id;

  @Column(unique: true)
  String description;

  @Relate(#procedures)
  AppointmentDoctorModel procedure;
}
