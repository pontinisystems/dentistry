import 'dart:ffi';
import 'package:json_annotation/json_annotation.dart';

part 'statistic_result.g.dart';

@JsonSerializable(nullable: false)
class StatisticResult {
  StatisticResult({this.canceled, this.marked, this.today});

  factory StatisticResult.fromJson(Map<String, dynamic> json) =>
      _$StatisticResultFromJson(json);

  Map<String, dynamic> toJson() => _$StatisticResultToJson(this);

  final int canceled;
  final int marked;
  final int today;
}
