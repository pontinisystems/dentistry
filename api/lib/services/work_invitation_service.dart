import 'dart:ffi';

import 'package:dentistry_api/controllers/work_invitation/dto/accept_work_invitation_model.dart';
import 'package:dentistry_api/model/clinic_model.dart';
import 'package:dentistry_api/model/doctor_clinic_model.dart';
import 'package:dentistry_api/model/doctor_model.dart';
import 'package:dentistry_api/model/people_model.dart';
import 'package:dentistry_api/model/user_acess_model.dart';
import 'package:dentistry_api/model/work_invitation.model.dart';
import 'package:dentistry_api/repositories/clinic_repository.dart';
import 'package:dentistry_api/repositories/user_repository.dart';
import 'package:dentistry_api/repositories/work_invitation_repositotry.dart';

import '../dentistry_api.dart';

class WorkInvitationService {
  WorkInvitationService(this.context)
      : workInvitationRepository = WorkInvitationRepository(context),
        userRepository = UserRepository(context), clinicRepository = ClinicRepository(context);
  final ManagedContext context;
  final WorkInvitationRepository workInvitationRepository;
  final UserRepository userRepository;
  final ClinicRepository clinicRepository;


  Future<List<WorkInvitationModel>> findAllBy(UserAcessModel userAcessModel) async {
      final DoctorModel doctorModel = await userRepository.findDoctorByUserAcessId(userAcessModel.id);
      print("find doctor "+doctorModel.people.fullName);
      return  workInvitationRepository.findAllBy(doctorModel.id);
    
  }


Future<Void>linkDoctorToClinic(int idWorkInvitation) async{ 
  final WorkInvitationModel workInvitationModel = await workInvitationRepository.findBy(idWorkInvitation);
  final DoctorModel doctorModel = await userRepository.findDoctorById(workInvitationModel.doctorModel.id);
  final ClinicModel clinicModel = await clinicRepository.find(workInvitationModel.clinicModel.id);
   await workInvitationRepository.linkDoctorToClinic(clinicModel,doctorModel,workInvitationModel);
} 

}
