// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PeopleModel _$PeopleModelFromJson(Map<String, dynamic> json) {
  return PeopleModel(
    gender: _$enumDecode(_$SelectGenderEnumMap, json['gender']),
    numberPhone: json['numberPhone'] as String,
    fullName: json['fullName'] as String,
    dateOfBirth: json['dateOfBirth'] as String,
  );
}

Map<String, dynamic> _$PeopleModelToJson(PeopleModel instance) =>
    <String, dynamic>{
      'numberPhone': instance.numberPhone,
      'fullName': instance.fullName,
      'dateOfBirth': instance.dateOfBirth,
      'gender': _$SelectGenderEnumMap[instance.gender],
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

const _$SelectGenderEnumMap = {
  SelectGender.Male: 'Male',
  SelectGender.Female: 'Female',
};
