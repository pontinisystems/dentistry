// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_invitation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkInvitationModel _$WorkInvitationModelFromJson(Map<String, dynamic> json) {
  return WorkInvitationModel(
    id: json['id'] as int,
    title: json['title'] as String,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$WorkInvitationModelToJson(
        WorkInvitationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'title': instance.title,
    };
