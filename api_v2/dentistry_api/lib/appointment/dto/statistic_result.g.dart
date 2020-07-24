// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistic_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatisticResult _$StatisticResultFromJson(Map<String, dynamic> json) {
  return StatisticResult(
    canceled: json['canceled'] as int,
    marked: json['marked'] as int,
    today: json['today'] as int,
  );
}

Map<String, dynamic> _$StatisticResultToJson(StatisticResult instance) =>
    <String, dynamic>{
      'canceled': instance.canceled,
      'marked': instance.marked,
      'today': instance.today,
    };
