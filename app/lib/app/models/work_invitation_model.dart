

import 'package:json_annotation/json_annotation.dart';

import 'package:dentistry/app/models/user_model.dart';

part 'work_invitation_model.g.dart';

@JsonSerializable(nullable: false)
class WorkInvitationModel {
  
  final int id;
  final String message;
  final String title;
  WorkInvitationModel({
    this.id,
    this.title,
    this.message,
  });

  
  
 factory WorkInvitationModel.fromJson(Map<String, dynamic> json) => _$WorkInvitationModelFromJson(json);
  Map<String, dynamic> toJson() => _$WorkInvitationModelToJson(this);

  
}
