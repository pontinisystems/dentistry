import 'package:dentistry/app/core/custom_dio.dart';
import 'package:dentistry/app/models/work_invitation_model.dart';
import 'package:dentistry/app/repositories/interfaces/i_work_invitation_repository.dart';

class WorkInvitationRepository implements IWorkInvitationRepository {
  @override
  Future<List<WorkInvitationModel>> fetchMyWorkInvitations() {
    final dio = CustomDio.withAuthentication().instance;
    return dio.get('v1/work/myinvitations').then((res) => res.data
        .map<WorkInvitationModel>((m) => WorkInvitationModel.fromJson(m))
        .toList());
  }
}
