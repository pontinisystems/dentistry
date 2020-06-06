
import 'package:dentistry/app/models/people_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'patient_model.g.dart';

@JsonSerializable(nullable: false)
class PatientModel {

  final PeopleModel people;
  

  PatientModel({
    this.people,
  
  
  });

  factory PatientModel.fromJson(Map<String, dynamic> json) => _$PatientModelFromJson(json);
  Map<String, dynamic> toJson() => _$PatientModelToJson(this);



  PatientModel copyWith({
    PeopleModel people,
  }) {
    return PatientModel(
      people: people ?? this.people,
    );
  }
}
