import 'package:agatra/core/resources/list_response.dart';
import 'package:agatra/core/resources/single_response.dart';
import 'package:agatra/features/data/models/arcade_center.dart';
import 'package:agatra/features/data/models/arcade_location.dart';
import 'package:agatra/features/data/models/arcade_location_compact.dart';
import 'package:agatra/features/data/models/city.dart';
import 'package:agatra/features/data/models/form/login_body.dart';
import 'package:agatra/features/data/models/form/new_arcade_center_body.dart';
import 'package:agatra/features/data/models/form/new_game_title_body.dart';
import 'package:agatra/features/data/models/form/new_game_title_version_body.dart';
import 'package:agatra/features/data/models/form/register_body.dart';
import 'package:agatra/features/data/models/game_title.dart';
import 'package:agatra/features/data/models/game_title_version.dart';
import 'package:agatra/features/data/models/session.dart';
import 'package:agatra/features/data/models/user.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://oyster-app-3g63e.ondigitalocean.app/agatra")
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET('/cities')
  Future<HttpResponse<ListResponse<CityModel>>> getCities();

  @GET('/game_titles')
  Future<HttpResponse<ListResponse<GameTitleModel>>> getGameTitles();

  @GET('/game_title_versions')
  Future<HttpResponse<ListResponse<GameTitleVersionModel>>> gameTitleVersionOf({
    @Query('game_title') required int gameTitleIid
  });

  @GET('/arcade_centers')
  Future<HttpResponse<ListResponse<ArcadeCenterModel>>> getArcadeCenters();

  @GET('/arcade_locations')
  Future<HttpResponse<ListResponse<ArcadeLocationCompactModel>>> getArcadeLocations({
    @Query('page') required int page,
    @Query('search') String? search,
    @Query('lat') double? lat,
    @Query('long') double? long,
    @Query('city') int? cityId,
    @Query('game_title') int? gameTitleId,
    @Query('game_title_version') int? gameTitleVersionId,
    @Query('arcade_center') int? arcadeCenterId,
  });

  @POST('/register')
  Future<HttpResponse<SingleResponse>> register({
    @Body() required RegisterBodyModel body,
  });

  @POST('/login')
  Future<HttpResponse<SingleResponse<SessionModel>>> login({
    @Body() required LoginBodyModel body,
  });

  @GET('/profile')
  Future<HttpResponse<SingleResponse<UserModel>>> getProfile({
    @Header('Authorization') required String token,
  });

  @POST('/logout')
  Future<HttpResponse<void>> logout({
    @Header('Authorization') required String token,
  });

  @GET('/arcade_centers/{id}')
  Future<HttpResponse<SingleResponse<ArcadeCenterModel>>> getArcadeCenter({
    @Path('id') required int id,
  });

  @POST('/admin/arcade_centers')
  Future<HttpResponse<SingleResponse>> createArcadeCenter({
    @Header('Authorization') required String token,
    @Body() required NewArcadeCenterBody body,
  });

  @PUT('/admin/arcade_centers/{id}')
  Future<HttpResponse<SingleResponse>> updateArcadeCenter({
    @Header('Authorization') required String token,
    @Path('id') required int id,
    @Body() required NewArcadeCenterBody body,
  });

  @GET('/game_titles/{id}')
  Future<HttpResponse<SingleResponse<GameTitleModel>>> getGameTitle({
    @Path('id') required int id,
  });

  @GET('/game_title_versions/{id}')
  Future<HttpResponse<SingleResponse<GameTitleVersionModel>>> getGameTitleVersion({
    @Path('id') required int id,
  });

  @POST('/admin/game_titles')
  Future<HttpResponse<SingleResponse>> createGameTitle({
    @Header('Authorization') required String token,
    @Body() required NewGameTitleBody body,
  });

  @PUT('/admin/game_titles/{id}')
  Future<HttpResponse<SingleResponse>> updateGameTitle({
    @Header('Authorization') required String token,
    @Path('id') required int id,
    @Body() required NewGameTitleBody body,
  });

  @POST('/admin/game_title_versions')
  Future<HttpResponse<SingleResponse>> createGameTitleVersion({
    @Header('Authorization') required String token,
    @Body() required NewGameTitleVersionBody body,
  });

  @PUT('/admin/game_title_versions/{id}')
  Future<HttpResponse<SingleResponse>> updateGameTitleVersion({
    @Header('Authorization') required String token,
    @Path('id') required int id,
    @Body() required NewGameTitleVersionBody body,
  });

  @GET('/arcade_locations/{id}')
  Future<HttpResponse<SingleResponse<ArcadeLocationModel>>> getArcadeLocation({
    @Path('id') required int id,
  });
}