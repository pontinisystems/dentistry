
import 'package:json_annotation/json_annotation.dart';

part 'accept_work_invitation_model.g.dart';

@JsonSerializable()
class AcceptWorkInvitationModel {


  final int idWorkInvitation;
  final bool isAccepet;
  AcceptWorkInvitationModel( {
    this.idWorkInvitation,this.isAccepet,
  });



 factory AcceptWorkInvitationModel.fromJson(Map<String, dynamic> json) => _$AcceptWorkInvitationModelFromJson(json);
  Map<String, dynamic> toJson() => _$AcceptWorkInvitationModelToJson(this);


}
