

import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable(nullable: false)
class UserModel {
  
  final String email;
  final String numberPhone;
  final String password;
  final String fullName;
  final String dateOfBirth;
final String gender;

  UserModel( {
    this.gender,
    this.email,
    this.numberPhone,
    this.password,
    this.fullName,
    this.dateOfBirth,
  
  });




  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  UserModel copyWith({
    String email,
    String numberPhone,
    String pasword,
    String fullName,
    String dateOfBirth,
    String gender,
  }) {
    return UserModel(
      email: email ?? this.email,
      numberPhone: numberPhone ?? this.numberPhone,
      password: pasword ?? this.password,
      fullName: fullName ?? this.fullName,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      gender: gender ?? this.gender,
     
    );
  }
}
