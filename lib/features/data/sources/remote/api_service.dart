import 'package:agatra/core/resources/list_response.dart';
import 'package:agatra/features/data/models/city.dart';
import 'package:agatra/features/data/models/game_title.dart';
import 'package:agatra/features/data/models/game_title_version.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET('/cities')
  Future<HttpResponse<ListResponse<CityModel>>> getCities();

  @GET('/game_titles')
  Future<HttpResponse<ListResponse<GameTitleModel>>> getGameTitles();

  @GET('/game_title_versions/{game_title_id}')
  Future<HttpResponse<ListResponse<GameTitleVersionModel>>> gameTitleVersionOf({
    @Path('game_title_id') required String id
  });
}