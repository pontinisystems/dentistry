import 'package:dentistry_api/model/clinic_model.dart';
import 'package:dentistry_api/repositories/clinic_repository.dart';
import '../dentistry_api.dart';

class ClinicService {
  ClinicService(this.context)
      : clinicRepository = ClinicRepository(context);
  final ManagedContext context;
  final ClinicRepository clinicRepository;



  Future<bool> clinicExist(int idClinic) async {
    print('clinicExiste');
      final ClinicModel clinicModel = await clinicRepository.find(idClinic);
      if(clinicModel!=null){
        return true;
      }else{
        return false;
        
      }
    
  }

}
