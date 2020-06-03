import 'package:mobx/mobx.dart';

part 'patient_controller.g.dart';

class PatientController = _PatientControllerBase with _$PatientController;

abstract class _PatientControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
