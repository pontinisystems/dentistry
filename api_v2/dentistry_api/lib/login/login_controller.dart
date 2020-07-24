import 'dart:async';

import 'package:aqueduct/aqueduct.dart';
import 'package:dentistry_api/model/message.dart';
import 'package:dentistry_api/model/user_acess_model.dart';
import 'package:dentistry_api/services/interface/i_user_service.dart';
import 'package:dentistry_api/services/user_service.dart';

import '../strings.dart';
import 'dto/login_request.dart';

class LoginController extends ResourceController {
  LoginController(this.context) : userService = UserService(context);

  final ManagedContext context;

  final IUserService userService;

  @Operation.post()
  Future<Response> login(@Bind.body() LoginRequest request) async {
    try {

      final validate = request.validate();
      if (validate.isNotEmpty) {
        return Response.badRequest(body: validate);
      }
      final userToken = await userService.login(request);

      if (userToken != null) {
        return Response.ok({'authenticated': token != null, 'token': userToken});
      }else{
        return Response.unauthorized();
      }
    } catch (e) {
      print(e);
      return Response.serverError(
          body: Message(
                  action: false,
                  userMessage: unexpectedFailure,
                  technicalMessage: serverError+e.toString())
              .toMap());
    }
  }





}
