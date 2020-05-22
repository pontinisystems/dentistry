
import 'package:json_annotation/json_annotation.dart';
import 'package:dentistry/app/models/user_model.dart';
part 'doctor_model.g.dart';

@JsonSerializable(nullable: false)
class DoctorModel {

  final UserModel user;
  final String cro;
  

  DoctorModel({
    this.user,
    this.cro,
  
  
  });

  factory DoctorModel.fromJson(Map<String, dynamic> json) => _$DoctorModelFromJson(json);
  Map<String, dynamic> toJson() => _$DoctorModelToJson(this);



  DoctorModel copyWith({
    String cro,
    UserModel user,
  }) {
    return DoctorModel(
      cro: cro ?? this.cro,
      user: user ?? this.user,
    );
  }
}
