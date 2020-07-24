

import 'package:dentistry_api/appointment/dto/appointment_result.dart';
import 'package:dentistry_api/appointment/dto/statistic_result.dart';
import 'package:dentistry_api/filter/filter_appointment.dart';

abstract class IAppointmentService{

  Future<StatisticResult> getStatistic();

Future<List<AppointmentResult>> getAppointment(FilterAppointment filterAppointment);

}