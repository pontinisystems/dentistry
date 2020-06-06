
import 'package:dentistry/app/models/login_model.dart';
import 'package:dentistry/app/models/people_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'doctor_model.g.dart';

@JsonSerializable(nullable: false)
class DoctorModel {

  final PeopleModel people;
  final String cro;
  final LoginModel login;
  

  DoctorModel({ 
    this.people,
    this.cro,
    this.login
  
  });

  

  factory DoctorModel.fromJson(Map<String, dynamic> json) => _$DoctorModelFromJson(json);
  Map<String, dynamic> toJson() => _$DoctorModelToJson(this);



  DoctorModel copyWith({
    String cro,
    PeopleModel people,
    LoginModel login
  }) {
    return DoctorModel(
      cro: cro ?? this.cro,
      people: people ?? this.people,
      login: login ?? this.login,
    );
  }
}
