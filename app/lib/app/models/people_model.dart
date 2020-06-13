import 'package:json_annotation/json_annotation.dart';

part 'people_model.g.dart';

@JsonSerializable(nullable: false)
class PeopleModel {
  final String numberPhone;
  final String fullName;
  final String dateOfBirth;
  final SelectGender gender;

  PeopleModel({
    this.gender,
    this.numberPhone,
    this.fullName,
    this.dateOfBirth,
  });

  factory PeopleModel.fromJson(Map<String, dynamic> json) =>
      _$PeopleModelFromJson(json);
  Map<String, dynamic> toJson() => _$PeopleModelToJson(this);

  PeopleModel copyWith({
    String numberPhone,
    String fullName,
    String dateOfBirth,
    SelectGender gender,
  }) {
    return PeopleModel(
      numberPhone: numberPhone ?? this.numberPhone,
      fullName: fullName ?? this.fullName,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      gender: gender ?? this.gender,
    );
  }
}

enum SelectGender { Male, Female }
