import 'package:dentistry_api/appointment/dto/appointment_result.dart';
import 'package:dentistry_api/appointment/dto/statistic_result.dart';
import 'package:dentistry_api/filter/filter_appointment.dart';
import '../dentistry_api.dart';
import 'interface/i_appointment_service.dart';

class AppointmentService implements IAppointmentService {
  AppointmentService(this.context);

  final ManagedContext context;

  @override
  Future<StatisticResult> getStatistic() async {
    return await StatisticResult(canceled: 10, marked: 10, today: 18);
  }

  @override
  Future<List<AppointmentResult>> getAppointment(FilterAppointment filterAppointment) async {
    var list = List<AppointmentResult>();

    for (int i = 0; i < 1000; i++) {
      list.add(AppointmentResult(
          dateTime: DateTime.now(), namePatient: "Ewerton Pontini"));
    }

    return await list;
  }
}
