
import 'package:dentistry_api/model/doctor_model.dart';
import 'package:dentistry_api/model/user_model.dart';
import 'package:dentistry_api/utils/cryptography_util.dart';

import '../dentistry_api.dart';

class UserRepository {
  UserRepository(this.context);

  final ManagedContext context;

  Future<UserModel> recoverUserByLoginPassword
(String login, String senha) {
   
    final query = Query<UserModel>(context)
      ..where((userPerson) => userPerson.email).equalTo(login.trim())
      ..where((userPerson) => userPerson.password).equalTo(senha.trim());

    return query.fetchOne();
  }

  Future saveDoctor(DoctorModel request) async {
    print(request.user.password);
    await context.transaction((transaction) async {
      request.user.password = Cryptography.encryptPassword(request.user.password);
      

      await transaction.insertObject(request.user).then((onValue) {
        return transaction.insertObject(DoctorModel()
          ..user = onValue
          ..cro = request.cro);
      });
    });
  }

  Future<UserModel> findId(int id) async {
    final query = Query<UserModel>(context)
      ..where((usuario) => usuario.id).equalTo(id);
    return await query.fetchOne();
  }
}
