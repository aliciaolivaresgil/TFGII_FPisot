import 'package:dio/dio.dart';

const placesAccessToken = String.fromEnvironment('MAPBOX_ACCESS_TOKEN');

class PlacesInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters.addAll({
      'lenguage': 'es',
      'limit': '7', //! No estoy seguro de que vaya aquí
      'access_token': placesAccessToken,
    });

    super.onRequest(options, handler);
  }
}
