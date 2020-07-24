// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insert_patient_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InsertPatientModel _$InsertPatientModelFromJson(Map<String, dynamic> json) {
  return InsertPatientModel(
    fullName: json['fullName'] as String,
    email: json['email'] as String,
    numberPhone: json['numberPhone'] as String,
    dateOfBirth: json['dateOfBirth'] as String,
    gender: _$enumDecodeNullable(_$SelectGenderEnumMap, json['gender']),
    idClinic: json['idClinic'] as int,
  );
}

Map<String, dynamic> _$InsertPatientModelToJson(InsertPatientModel instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'email': instance.email,
      'numberPhone': instance.numberPhone,
      'dateOfBirth': instance.dateOfBirth,
      'gender': _$SelectGenderEnumMap[instance.gender],
      'idClinic': instance.idClinic,
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

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$SelectGenderEnumMap = {
  SelectGender.Male: 'Male',
  SelectGender.Female: 'Female',
};
