import 'package:dentistry_api/model/address_model.dart';
import 'package:dentistry_api/model/doctor_model.dart';
import 'package:dentistry_api/model/patient_model.dart';
import 'package:dentistry_api/model/people_model.dart';
import 'package:dentistry_api/utils/cryptography_util.dart';

import '../dentistry_api.dart';

class UserRepository {
  UserRepository(this.context);

  final ManagedContext context;

  Future<DoctorModel> recoverUserByLoginPassword(String login, String password) {

    
    final query = Query<DoctorModel>(context)
      ..where((userPerson) => userPerson.user.login).equalTo(login.trim())
      ..where((userPerson) => userPerson.user.password).equalTo(password.trim());
    return query.fetchOne();
  }

  Future saveDoctor(DoctorModel request) async {
    print(request.user.password);
    await context.transaction((transaction) async {
      request.user.password =Cryptography.encryptPassword(request.user.password);

      request.people.address = AddressModel();
      request.people.address.city = "a";
      request.people.address.neighborhood = "a";
      request.people.address.street = "a";
      request.people.address.number = "a";
      await transaction
          .insertObject(request.people.address)
          .then((addressModel) async {
        request.people.address = addressModel;
        await transaction.insertObject(request.user).then((newUser) {
          return transaction.insertObject(DoctorModel()
            ..user = newUser
            ..cro = request.cro);
        });
      });
    });
  }

  Future savePatient(PatientModel request) async {
    await context.transaction((transaction) async {
      request.people.address = AddressModel();
      request.people.address.city = "";
      request.people.address.neighborhood = "";
      request.people.address.street = "";
      request.people.address.number = "";
      await transaction
          .insertObject(request.people.address)
          .then((addressModel) async {
        request.people.address = addressModel;
        await transaction.insertObject(request.people).then((newUser) {
          return transaction.insertObject(PatientModel()
            ..people = newUser
          );
        });
      });
    });
  }

  Future<PeopleModel> findId(int id) async {
    final query = Query<PeopleModel>(context)
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

  
  Future<PeopleModel> findByName(String fullName) async {
    final query = Query<PeopleModel>(context)
      ..where((user) => user.fullName).equalTo(fullName);

    return await query.fetchOne();
  }

  Future<DoctorModel> findByEmail(String email) async {
    final query = Query<DoctorModel>(context)
      ..where((user) => user.user.login).equalTo(email);

    return await query.fetchOne();
  }
}
