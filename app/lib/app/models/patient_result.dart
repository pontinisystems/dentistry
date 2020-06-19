
import 'package:dentistry/app/models/people_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'patient_result.g.dart';

@JsonSerializable(nullable: false)
class PatientResult {

  final int id;
  final String name;

  PatientResult({
    this.id,
    this.name
  
  });

  factory PatientResult.fromJson(Map<String, dynamic> json) => _$PatientResultFromJson(json);
  Map<String, dynamic> toJson() => _$PatientResultToJson(this);



  PatientResult copyWith({
    PeopleModel people, String email,
  }) {
    return PatientResult(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }
}
