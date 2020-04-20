import 'package:aqueduct/aqueduct.dart';
import 'package:dentistry_api/model/doctor_clinic_model.dart';
import 'package:dentistry_api/model/user_model.dart';

import 'appointment_doctor_model.dart';

class DoctorModel extends ManagedObject<_DoctorModel> implements _DoctorModel {


static Map<String,String> validateField(DoctorModel doctorModel) {
    final Map<String,String> mapValidate = {};

    if(doctorModel == null || doctorModel.cro.isEmpty) {
      mapValidate['Cro'] = 'Login obrigatório';
    }
    
    if(doctorModel.user == null || doctorModel.user.fullName.isEmpty) {
      mapValidate['fullName'] = 'Nome obrigatório';
    }
    
    if(doctorModel.user == null || doctorModel.user.fullName.isEmpty) {
      mapValidate['fullName'] = 'Nome obrigatório';
    }
    
    if(doctorModel.user == null || doctorModel.user.numberPhone.isEmpty) {
      mapValidate['NumberPhone'] = 'Número de telefone obrigatório';
    }


    if(doctorModel.user == null || doctorModel.user.dateOfBirth.isEmpty) {
      mapValidate['NumberPhone'] = 'Data Nasc obrigatório';
    }


    


    return mapValidate;

  }




}

@Table(name: 'doctor')
class _DoctorModel {
  @Column(primaryKey: true, autoincrement: true)
  int id;

  @Column(unique: true)
  String cro;

  @Relate(
    #user,
    isRequired: true,
    onDelete: DeleteRule.cascade,
  )
  UserModel user;

  ManagedSet<DoctorClinicModel> doctorClinics;

  ManagedSet<AppointmentDoctorModel> appointmentDoctors;



}
