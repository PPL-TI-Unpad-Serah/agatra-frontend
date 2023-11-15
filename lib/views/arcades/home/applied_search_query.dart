import 'package:agatra/features/domain/entities/arcade_center.dart';
import 'package:agatra/features/domain/entities/city.dart';
import 'package:agatra/features/domain/entities/game_title.dart';
import 'package:agatra/features/domain/entities/game_title_version.dart';
import 'package:agatra/views/arcades/home/search_query_provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';

part 'applied_search_query.freezed.dart';

@freezed
class AppliedSearchQuery with _$AppliedSearchQuery {
  factory AppliedSearchQuery({
    CityEntity? city,
    GameTitleEntity? gameTitle,
    GameTitleVersionEntity? gameTitleVersion,
    ArcadeCenterEntity? arcadeCenter,
    Position? position
  }) = _AppliedSearchQuery;

  factory AppliedSearchQuery.fromSearchQuery(SearchQuery searchQuery, {Position? position}) {
    return AppliedSearchQuery(
      city: searchQuery.city,
      gameTitle: searchQuery.gameTitle,
      gameTitleVersion: searchQuery.gameTitleVersion,
      arcadeCenter: searchQuery.arcadeCenter,
      position: searchQuery.sortByNearest ? position! : null
    );
  }
}