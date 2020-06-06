import 'package:dentistry_api/model/login_model.dart';
import 'package:jaguar_jwt/jaguar_jwt.dart';

class JwtUtils {

  static const String _jwtChavePrivada = 'DuGru4jQvUMxP9eyTvDxwpBJhhMTnCXU8cG8YYu8g4jhpRermB5jHSk';

  static String generateTokenJWT(LoginModel usuario) {
    final claimSet = JwtClaim(
      issuer: 'http://localhost',
      subject: usuario.id.toString(),
      otherClaims: <String,dynamic>{},
      maxAge: const Duration(days: 1)
    );

    final token = 'Bearer ${issueJwtHS256(claimSet, _jwtChavePrivada)}';

    return token;
  }

  static JwtClaim checkToken(String token) {
    return verifyJwtHS256Signature(token, _jwtChavePrivada);
  }

}