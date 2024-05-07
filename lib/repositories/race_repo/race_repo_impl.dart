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
      type: type,
      location: location,
      date: date,
      distance: distance,
    );
  }

  @override
  Future<
      ResultHandler<({List<RaceModel> countries, List<RaceModel> races}),
          Failure>> searchRaceByNameOrCountry(String searchQuery) async {
    return await raceDataSource.searchRaceByNameOrCountry(searchQuery);
  }

  @override
  Future<ResultHandler<Set<String>, Failure>> getRaceDates() async {
    return await raceDataSource.getRaceDates();
  }

  @override
  Future<ResultHandler<Set<String>, Failure>> getRaceDistances() async {
    return await raceDataSource.getRaceDistances();
  }

  @override
  Future<ResultHandler<Set<String>, Failure>> getRaceLocations() async {
    return await raceDataSource.getRaceLocations();
  }

  @override
  Future<ResultHandler<Set<String>, Failure>> getRaceTypes() async {
    return await raceDataSource.getRaceTypes();
  }
}
