
import 'package:json_annotation/json_annotation.dart';
import 'package:dentistry/app/models/user_model.dart';
part 'patient_model.g.dart';

@JsonSerializable(nullable: false)
class PatientModel {

  final UserModel user;
  final String cro;
  

  PatientModel({
    this.user,
    this.cro,
  
  
  });

  factory PatientModel.fromJson(Map<String, dynamic> json) => _$PatientModelFromJson(json);
  Map<String, dynamic> toJson() => _$PatientModelToJson(this);



  PatientModel copyWith({
    String cro,
    UserModel user,
  }) {
    return PatientModel(
      user: user ?? this.user,
    );
  }
}
