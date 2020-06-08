
import 'package:dentistry/app/models/people_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'patient_model.g.dart';

@JsonSerializable(nullable: false)
class PatientModel {

  final PeopleModel people;
  final String email;

  PatientModel({
    this.people,
    this.email
  
  });

  factory PatientModel.fromJson(Map<String, dynamic> json) => _$PatientModelFromJson(json);
  Map<String, dynamic> toJson() => _$PatientModelToJson(this);



  PatientModel copyWith({
    PeopleModel people, String email,
  }) {
    return PatientModel(
      people: people ?? this.people,
      email: email ?? this.email,
    );
  }
}
