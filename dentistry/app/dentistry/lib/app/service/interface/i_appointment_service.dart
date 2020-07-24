import 'package:dentistry/app/models/appointment_result.dart';
import 'package:dentistry/app/models/statistic_result.dart';
import 'package:dentistry/app/models/user_access_request.dart';

abstract class IAppointmentService {
  Future<StatisticResult> getStatistic();

  Future<List<AppointmentResult>> getAppointment();
}
