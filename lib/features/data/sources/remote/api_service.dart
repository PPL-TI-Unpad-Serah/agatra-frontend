import 'package:agatra/core/resources/list_response.dart';
import 'package:agatra/features/data/models/arcade_location_compact.dart';
import 'package:agatra/features/data/models/city.dart';
import 'package:agatra/features/data/models/form/login_body.dart';
import 'package:agatra/features/data/models/game_title.dart';
import 'package:agatra/features/data/models/game_title_version.dart';
import 'package:agatra/features/data/models/session.dart';
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

  @GET('/arcade_locations')
  Future<HttpResponse<ListResponse<ArcadeLocationCompactModel>>> getArcadeLocations(
    @Query('page') int page,
    @Query('search') String? search,
    @Query('nearby') bool? nearby,
    @Query('city') String? cityId,
    @Query('game_title') String? gameTitleId,
    @Query('game_title_version') String? gameTitleVersionId,
    @Query('arcade_center') String? arcadeCenterId,
  );

  @POST('/login')
  Future<HttpResponse<SessionModel>> login({
    @Body() required LoginBodyModel body,
  });

  @POST('/logout')
  Future<HttpResponse<void>> logout({
    @Header('Authorization') required String token,
  });
}