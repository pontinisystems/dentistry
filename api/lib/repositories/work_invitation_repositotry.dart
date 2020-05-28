import 'package:dentistry_api/model/user_model.dart';
import 'package:dentistry_api/model/work_invitation.model.dart';

import '../dentistry_api.dart';

class WorkInvitationRepository {
  WorkInvitationRepository(this.context);

  final ManagedContext context;

  Future<List<WorkInvitationModel>> findAllBy(int idDoctor) async {
    final query = Query<WorkInvitationModel>(context)
      ..where((work) => work.doctorModel).identifiedBy(idDoctor);

    var list = await query.fetch();
    return list ;
  }
}
