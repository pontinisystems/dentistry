import 'package:mobx/mobx.dart';

part 'register_patient_controller.g.dart';

class RegisterPatientController = _RegisterPatientControllerBase
    with _$RegisterPatientController;

abstract class _RegisterPatientControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
