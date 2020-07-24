import 'package:dentistry/app/models/appointment_result.dart';
import 'package:dentistry/app/models/statistic_result.dart';

abstract class IAppointmentRepository {
  Future<StatisticResult> getStatistic();

  Future<List<AppointmentResult>> getAppointment();

}
