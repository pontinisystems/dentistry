// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accept_work_invitation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AcceptWorkInvitationModel _$AcceptWorkInvitationModelFromJson(
    Map<String, dynamic> json) {
  return AcceptWorkInvitationModel(
    idWorkInvitation: json['idWorkInvitation'] as int,
    isAccepet: json['isAccepet'] as bool,
  );
}

Map<String, dynamic> _$AcceptWorkInvitationModelToJson(
        AcceptWorkInvitationModel instance) =>
    <String, dynamic>{
      'idWorkInvitation': instance.idWorkInvitation,
      'isAccepet': instance.isAccepet,
    };
