import 'package:agatra/core/resources/list_response.dart';
import 'package:agatra/core/resources/single_response.dart';
import 'package:agatra/features/data/models/arcade_center.dart';
import 'package:agatra/features/data/models/arcade_location_compact.dart';
import 'package:agatra/features/data/models/city.dart';
import 'package:agatra/features/data/models/form/login_body.dart';
import 'package:agatra/features/data/models/form/new_arcade_center_body.dart';
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
  Future<HttpResponse<ListResponse<ArcadeLocationCompactModel>>> getArcadeLocations(
    @Query('page') int page,
    @Query('search') String? search,
    @Query('nearby') bool? nearby,
    @Query('city') String? cityId,
    @Query('game_title') String? gameTitleId,
    @Query('game_title_version') String? gameTitleVersionId,
    @Query('arcade_center') String? arcadeCenterId,
  );

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
    @Path('id') required String id,
  });

  @POST('/arcade_centers')
  Future<HttpResponse<SingleResponse<ArcadeCenterModel>>> createArcadeCenter({
    @Header('Authorization') required String token,
    @Body() required NewArcadeCenterBody body,
  });

  @PUT('/arcade_centers/{id}')
  Future<HttpResponse<SingleResponse<ArcadeCenterModel>>> updateArcadeCenter({
    @Header('Authorization') required String token,
    @Path('id') required String id,
    @Body() required NewArcadeCenterBody body,
  });
}