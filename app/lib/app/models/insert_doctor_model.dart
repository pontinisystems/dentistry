
import 'package:dentistry/app/models/login_model.dart';
import 'package:dentistry/app/models/people_model.dart';
import 'package:json_annotation/json_annotation.dart';


part 'insert_doctor_model.g.dart';

@JsonSerializable()
class InsertDoctorModel {
  @JsonKey(name: 'people')
  final PeopleModel peopleModel;
  final LoginModel loginModel;
  final String cro;

  InsertDoctorModel({this.peopleModel, this.loginModel,this.cro});

  factory InsertDoctorModel.fromJson(Map<String, dynamic> json) =>
      _$InsertDoctorModelFromJson(json);
  Map<String, dynamic> toJson() => _$InsertDoctorModelToJson(this);

}
