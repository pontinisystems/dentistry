import 'package:dentistry_api/model/address_model.dart';
import 'package:dentistry_api/model/doctor_model.dart';
import 'package:dentistry_api/model/patient_model.dart';
import 'package:dentistry_api/model/people_model.dart';
import 'package:dentistry_api/model/user_acess_model.dart';
import 'package:dentistry_api/utils/cryptography_util.dart';

import '../dentistry_api.dart';

class UserRepository {
  UserRepository(this.context);

  final ManagedContext context;

  Future<DoctorModel> recoverUserByLoginPassword(
      String login, String password) {
    final query = Query<DoctorModel>(context)
      ..where((userPerson) => userPerson.userAcess.login).equalTo(login.trim())
      ..where((userPerson) => userPerson.userAcess.password)
          .equalTo(password.trim());
    return query.fetchOne();
  }

  Future saveDoctor(DoctorModel request) async {
    print('object');
    print(request);
    print('object');

    await context.transaction((transaction) async {
      request.userAcess.password =
          Cryptography.encryptPassword(request.userAcess.password);
      request.people.address = AddressModel();
      request.people.address.city = "a";
      request.people.address.neighborhood = "a";
      request.people.address.street = "a";
      request.people.address.number = "a";

      return transaction
          .insertObject(request.people.address)
          .then((addressModel) {
        request.people.address = addressModel;
        return transaction.insertObject(request.people).then((people) {
          return transaction.insertObject(request.userAcess).then((userAcess) {
            return transaction.insertObject(DoctorModel()
              ..userAcess = userAcess
              ..people = people
              ..cro = request.cro);
          });
        });
      });
    });
  }

  Future savePatient(PatientModel request) async {
    request.people.address = AddressModel();
    request.people.address.city = "";
    request.people.address.neighborhood = "";
    request.people.address.street = "";
    request.people.address.number = "";

    await context.transaction((transaction) async {
      await transaction
          .insertObject(request.people.address)
          .then((addressModel) async {
        request.people.address = addressModel;
        await transaction.insertObject(request.people).then((newUser) {
          return transaction.insertObject(request..people = newUser);
        });
      });
    });
  }

  Future<UserAcessModel> findUserAcess(int id) async {
    final query = Query<UserAcessModel>(context)
      ..where((userAcess) => userAcess.id).equalTo(id);
    return await query.fetchOne();
  }

  Future<PeopleModel> findId(int id) async {
    final query = Query<PeopleModel>(context)
      ..where((usuario) => usuario.id).equalTo(id);
    return await query.fetchOne();
  }

  Future<DoctorModel> findDoctorByUserAcessId(int id) async {
    print('objectfindDoctorByUserAcessId');
    final query = Query<DoctorModel>(context)
      ..where((doctor) => doctor.userAcess.id).identifiedBy(id);

    return await query.fetchOne();
  }

  Future<DoctorModel> findDoctorById(int id) async {
    final query = Query<DoctorModel>(context)
      ..where((doctor) => doctor.id).equalTo(id);

    return await query.fetchOne();
  }

  Future<PeopleModel> findByName(String fullName) async {
    final query = Query<PeopleModel>(context)
      ..where((user) => user.fullName).equalTo(fullName);

    return await query.fetchOne();
  }

  Future<DoctorModel> findByEmail(String email) async {
    final query = Query<DoctorModel>(context)
      ..where((user) => user.userAcess.login).equalTo(email);

    return await query.fetchOne();
  }
}
