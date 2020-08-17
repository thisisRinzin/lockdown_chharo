import 'package:json_annotation/json_annotation.dart';
import 'package:lockdown_chharo/models/dzongkag/dzongkhag.dart';
import 'package:lockdown_chharo/models/dzongkag/dzongkhags.dart';
import 'package:lockdown_chharo/models/service_area/service_areas.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: "https://of.selise.dev/api/v1/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/dzongkhags")
  Future<Dzongkhags> getDzongkhags();

  @GET("/service_areas")
  Future<ServiceAreas> getServiceAreas(
      {@Query('query') String query,
      @Query('dzongkhag_id') int dzongkhagId,
      @Query('per_page') int perPage});
}
