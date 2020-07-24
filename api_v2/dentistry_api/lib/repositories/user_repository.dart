import 'package:dentistry_api/model/user_acess_model.dart';
import 'package:dentistry_api/repositories/interfaces/i_user_repository.dart';

import '../dentistry_api.dart';




class UserRepository implements IUserRepository {
  UserRepository(this.context);

  final ManagedContext context;

  @override
  Future<UserAcessModel> recoverUserByLoginPassword(String login, String password) async{
    final query = Query<UserAcessModel>(context)
      ..where((userAccess) => userAccess.login).equalTo(login.trim())
      ..where((userAccess) => userAccess.password)
          .equalTo(password.trim());


    return await query.fetchOne();
  }

  @override
  Future<UserAcessModel> findUserAcess(int id) async {
    final query = Query<UserAcessModel>(context)
      ..where((userAcess) => userAcess.id).equalTo(id);
    return await query.fetchOne();
  }



}