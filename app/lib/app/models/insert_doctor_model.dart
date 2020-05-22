
import 'package:json_annotation/json_annotation.dart';

import 'package:dentistry/app/models/user_model.dart';

part 'insert_doctor_model.g.dart';

@JsonSerializable()
class InsertDoctorModel {
  @JsonKey(name: 'user')
  final UserModel userModel;
  final String cro;

  InsertDoctorModel({this.userModel, this.cro});

  factory InsertDoctorModel.fromJson(Map<String, dynamic> json) =>
      _$InsertDoctorModelFromJson(json);
  Map<String, dynamic> toJson() => _$InsertDoctorModelToJson(this);

  InsertDoctorModel copyWith({
    UserModel userModel,
    String cro,
    DateTime dateOfBirth,
  }) {
    return InsertDoctorModel(
      userModel: userModel ?? this.userModel,
      cro: cro ?? this.cro,
    );
  }
}
