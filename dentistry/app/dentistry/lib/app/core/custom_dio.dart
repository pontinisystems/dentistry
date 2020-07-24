
import 'package:dentistry/app/repositories/user_repository.dart';
import 'package:dio/dio.dart';

class CustomDio {
  var _dio;

  CustomDio() {
    _dio = Dio(_options);
  }

  CustomDio.withAuthentication() {
    _dio = Dio(_options);
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: _onRequest,
      onResponse: _onResponse,
      onError: _onError,
    ));
  }

  BaseOptions _options = BaseOptions(
    baseUrl: 'http://192.168.0.10:8888/',
    connectTimeout: 60000,
    receiveTimeout: 60000,
  );

  Dio get instance => _dio;
  
  _onRequest(RequestOptions options) async {
    var token = await UserRepository().getToken();
    print("TOKEN =====> "+token.toString());
    options.headers['Authorization'] = token;
  }

  _onResponse(Response e) {
    print('######### Response Log');
    print(e.data);
    print('######### Response Log');
  }


  _onError(DioError e) {
    print(e.toString());
    if(e.response?.statusCode == 403 || e.response?.statusCode == 401) {
     // UsuarioRepository().logout();
      //Get.offAllNamed('/');
    }
    return e;
  }
}
