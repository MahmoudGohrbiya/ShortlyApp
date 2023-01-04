import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:shortly/Models/ShortLink_model.dart';

part 'ow_api.g.dart';

@RestApi(baseUrl: "https://api.shrtco.de/v2/")
abstract class OwApi {
  factory OwApi(Dio dio, {String baseUrl}) = _OwApi;

  @GET("shorten?url={Link}")
  Future<ShortLink_model> GetShortLink(@Path("Link") Link);
}
