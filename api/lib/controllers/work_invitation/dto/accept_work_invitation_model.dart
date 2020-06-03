import 'dart:convert';

import '../../../dentistry_api.dart';

class AcceptWorkInvitationRequest extends Serializable {

  int idWorkInvitation;
  bool isAccepet;
  AcceptWorkInvitationRequest({
    this.idWorkInvitation,
    this.isAccepet,
  });

  Map<String,String> validateField() {
    final Map<String,String> mapValidate = {};

    if(idWorkInvitation == null ) {
      mapValidate['id'] = 'Id obrigatório';
    }
    
    if(isAccepet == null ) {
      mapValidate['isAccepet'] = 'isAccepet';
    }
    

    return mapValidate;

  }

 @override
  Map<String, dynamic> asMap() {
    return {
      'idWorkInvitation': idWorkInvitation,
      'isAccepet': isAccepet
    };
  }

  @override
  void readFromMap(Map<String, dynamic> object) {
    idWorkInvitation = object['idWorkInvitation'] as int;
    isAccepet = object[ 'isAccepet'] as bool;
  }



}
