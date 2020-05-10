import 'package:dentistry_api/services/user_service.dart';
import 'package:dentistry_api/utils/jwt_utils.dart';
import 'package:jaguar_jwt/jaguar_jwt.dart';

import '../dentistry_api.dart';

class JWTAuthentication extends Controller {


  //TUdo que vem pra frrnte dos dois pontos ele inicaliza antes de construir a classe
  JWTAuthentication(this.context):service=UserService(context);


  final ManagedContext context;
  final UserService service;



  @override
  FutureOr<RequestOrResponse> handle(Request request) async {
    final authHeader = request.raw.headers['authorization'];

    if (authHeader == null || authHeader.isEmpty) {
      return Response.unauthorized();
    }

    final authHeaderContent = authHeader[0]?.split(" ");

    if (authHeaderContent.length != 2 || authHeaderContent[0] != 'Bearer') {
      return Response.badRequest(body: {'message': 'token inválido'});
    }

    try {
      final token = authHeaderContent[1];
      final JwtClaim claimSet =JwtUtils.checkToken(token);
      final userId = int.parse(claimSet.toJson()['sub'].toString());

      if(userId==null){
        throw JwtException;
      }

      final  dataAtual = DateTime.now().toUtc();
      if(dataAtual.isAfter(claimSet.expiry)){
        return Response.unauthorized(); // Alterinativa é dar um refresh ......
      }

      final  usuario = await service.findId(userId); 

      request.attachments['user']=usuario;

      return request;


    } on JwtException catch (e) {
      print(e);
      return Response.unauthorized();
    }

  }
}
