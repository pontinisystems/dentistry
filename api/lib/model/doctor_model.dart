import 'package:aqueduct/aqueduct.dart';
import 'package:dentistry_api/model/doctor_clinic_model.dart';
import 'package:dentistry_api/model/people_model.dart';
import 'package:dentistry_api/model/user_acess_model.dart';
import 'package:dentistry_api/model/work_invitation.model.dart';

import 'appointment_doctor_model.dart';

class DoctorModel extends ManagedObject<_DoctorModel> implements _DoctorModel {
  static Map<String, String> validateField(DoctorModel doctorModel) {
    final Map<String, String> mapValidate = {};

    if (doctorModel == null || doctorModel.cro.isEmpty) {
      mapValidate['cro'] = 'Login obrigatório';
    }

    if (doctorModel.people == null || doctorModel.people.fullName.isEmpty) {
      mapValidate['fullName'] = 'Nome obrigatório';
    }

    if (doctorModel.people == null ||
        doctorModel.people.numberPhone == null ||
        doctorModel.people.numberPhone.isEmpty) {
      mapValidate['numberPhone'] = 'Número de telefone obrigatório';
    }

    return mapValidate;
  }
}

@Table(name: 'doctor')
class _DoctorModel {
  @Column(primaryKey: true, autoincrement: true)
  int id;

  @Relate(
    #people,
    isRequired: true,
    onDelete: DeleteRule.cascade,
  )
  PeopleModel people;

  
  @Column(unique: true)
  String cro;

  @Relate(
    #user,
    isRequired: true,
    onDelete: DeleteRule.cascade,
  )
  UserAcessModel userAcess;

  ManagedSet<DoctorClinicModel> doctorClinics;

  ManagedSet<AppointmentDoctorModel> appointmentDoctors;

  ManagedSet<WorkInvitationModel> workInvitationModels;
}
