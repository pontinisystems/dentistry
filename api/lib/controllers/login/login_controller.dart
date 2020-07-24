

import 'dart:async';

import 'package:aqueduct/aqueduct.dart';
import 'package:dentistry_api/services/user_service.dart';

import 'dto/login_request.dart';

class LoginController extends ResourceController {
  LoginController(this.context) : userService = UserService(context);

  final ManagedContext context;

  final UserService userService;

  @Operation.post()
  Future<Response> login(@Bind.body() LoginRequest request) async {
    
    final validate = request.validate();
    if (validate.isNotEmpty) {
      return Response.badRequest(body: validate);
    }


    final token = await userService.login(request);

    return Response.ok({'autenticado ': token != null, 'token': token});
  }
}
