import 'package:dentistry_api/model/clinic_model.dart';
import 'package:dentistry_api/model/doctor_clinic_model.dart';
import 'package:dentistry_api/model/doctor_model.dart';
import 'package:dentistry_api/model/user_model.dart';
import 'package:dentistry_api/model/work_invitation.model.dart';

import '../dentistry_api.dart';

class WorkInvitationRepository {
  WorkInvitationRepository(this.context);

  final ManagedContext context;

  Future<List<WorkInvitationModel>> findAllBy(int idDoctor) async {
    final query = Query<WorkInvitationModel>(context)
      ..where((work) => work.doctorModel).identifiedBy(idDoctor)
      ..where((work) => work.isActive).equalTo(true);

    return await query.fetch();
  }

  Future<void> linkDoctorToClinic(ClinicModel clinicModel,
      DoctorModel doctorModel, WorkInvitationModel workInvitationModel) async {
    await context.transaction((transaction) async {
      await disableWorkInvitation(transaction, workInvitationModel);
      await transaction.insertObject(DoctorClinicModel()
        ..clinic = clinicModel
        ..doctor = doctorModel);
    });
  }

  Future disableWorkInvitation(ManagedContext transaction, WorkInvitationModel workInvitationModel) async {
     final query = Query<WorkInvitationModel>(transaction)
      ..values.isActive = false
      ..where((u) => u.id).equalTo(workInvitationModel.id);
    
    await query.updateOne();
  }

  Future<WorkInvitationModel> findBy(int id) async {
    final query = Query<WorkInvitationModel>(context)
      ..where((work) => work.id).equalTo(id);
    return await query.fetchOne();
  }
}
