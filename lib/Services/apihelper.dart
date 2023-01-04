import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../Models/ShortLink_model.dart';
import 'ow_api.dart';
import 'package:dio/dio.dart';

class ApiHelper {
  static late final ApiHelper _instance = ApiHelper._internal();
  Dio? _dio;
  OwApi? _client;
  String? myVerificationId;
  int? forceResendingToken;

  factory ApiHelper() {
    return _instance;
  }

  ApiHelper._internal() {
    this._dio = Dio();
    _dio!.options.connectTimeout = 15000;
    _dio!.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: true,
      error: true,
      request: true,
      compact: true,
    ));
    this._client = OwApi(_dio!);
  }

  Future<ShortLink_model> GetShortLink(String LongLink) async {
    return await _client!.GetShortLink(LongLink);
  }
}
