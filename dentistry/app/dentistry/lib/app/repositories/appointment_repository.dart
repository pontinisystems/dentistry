import 'package:dentistry/app/core/custom_dio.dart';
import 'package:dentistry/app/models/appointment_result.dart';
import 'package:dentistry/app/models/statistic_result.dart';
import 'package:dentistry/app/repositories/interfaces/i_appointment_repository.dart';

class AppointmentRepository implements IAppointmentRepository {
  @override
  Future<StatisticResult> getStatistic() async {
    final dio = CustomDio.withAuthentication().instance;
    return dio
        .get('v1/appointment/statistic')
        .then((res) => StatisticResult.fromJson(res.data));
  }

  @override
  Future<List<AppointmentResult>> getAppointment() {
    final dio = CustomDio.withAuthentication().instance;
    return dio.get('v1/appointment',queryParameters: {
      "initDate":DateTime.now(),
      "finalDate":DateTime.now(),

    }).then((res) => res.data
        .map<AppointmentResult>((m) => AppointmentResult.fromJson(m))
        .toList());
  }
}
