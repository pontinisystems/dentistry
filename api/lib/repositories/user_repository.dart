import 'package:dentistry_api/model/address_model.dart';
import 'package:dentistry_api/model/doctor_model.dart';
import 'package:dentistry_api/model/user_model.dart';
import 'package:dentistry_api/utils/cryptography_util.dart';

import '../dentistry_api.dart';

class UserRepository {
  UserRepository(this.context);

  final ManagedContext context;

  Future<UserModel> recoverUserByLoginPassword(String login, String senha) {
    final query = Query<UserModel>(context)
      ..where((userPerson) => userPerson.email).equalTo(login.trim())
      ..where((userPerson) => userPerson.password).equalTo(senha.trim());

    return query.fetchOne();
  }

  Future saveDoctor(DoctorModel request) async {
    print(request.user.password);
    await context.transaction((transaction) async {
      request.user.password =
          Cryptography.encryptPassword(request.user.password);

      request.user.address = AddressModel();
      request.user.address.city = "a";
      request.user.address.neighborhood = "a";
      request.user.address.street = "a";
      request.user.address.number = "a";
      await transaction
          .insertObject(request.user.address)
          .then((addressModel) async {
        request.user.address = addressModel;
        await transaction.insertObject(request.user).then((newUser) {
          return transaction.insertObject(DoctorModel()
            ..user = newUser
            ..cro = request.cro);
        });
      });
    });
  }

  Future<UserModel> findId(int id) async {
    final query = Query<UserModel>(context)
      ..where((usuario) => usuario.id).equalTo(id);
    return await query.fetchOne();
  }
Future<DoctorModel> findDoctorByUserId(int id) async {

    final query = Query<DoctorModel>(context)
      ..where((doctor) => doctor.user).identifiedBy(id);

    return await  query.fetchOne();
  }

Future<DoctorModel> findDoctorById(int id) async {

    final query = Query<DoctorModel>(context)
      ..where((doctor) => doctor.id).equalTo(id);

    return await  query.fetchOne();
  }

  Future<UserModel> findBy(String email, String cro) async {
    final query = Query<UserModel>(context)
      ..where((user) => user.email).equalTo(email);

    return await query.fetchOne();
  }
}
