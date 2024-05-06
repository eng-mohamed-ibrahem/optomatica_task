part of 'race_repo_interface.dart';

class RaceRepoImpl implements RaceRepoInterface {
  RaceRepoImpl({required this.raceDataSource});
  final RaceSourceInterface raceDataSource;
  @override
  Future<ResultHandler<List<RaceModel>, Failure>> getPaginationRaces(
      {required int page}) async {
    return await raceDataSource.getPaginationRaces(page: page);
  }

  @override
  Future<ResultHandler<List<RaceModel>, Failure>> filterRaceBy({
    String? type,
    String? location,
    String? date,
    String? distance,
  }) async {
    return await raceDataSource.filterRaceBy(
      type: date,
      location: location,
      date: date,
      distance: distance,
    );
  }

  @override
  Future<ResultHandler<({List<RaceModel> countries, List<RaceModel> races}), Failure>> searchRaceByNameOrCountry(
      String searchQuery) async {
    return await raceDataSource.searchRaceByNameOrCountry(searchQuery);
  }
}
