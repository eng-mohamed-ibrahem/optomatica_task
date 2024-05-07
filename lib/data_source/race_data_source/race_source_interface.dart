import 'package:optomatica_task/core/failure/failure.dart';
import 'package:optomatica_task/core/result_handler/result_handler.dart';
import 'package:optomatica_task/model/race_model.dart/race_model.dart';

abstract class RaceSourceInterface {
  Future<ResultHandler<List<RaceModel>, Failure>> getPaginationRaces(
      {required int page});
  Future<ResultHandler<List<RaceModel>, Failure>> filterRaceBy({
    String? type,
    String? location,
    String? date,
    String? distance,
  });
  Future<
      ResultHandler<({List<RaceModel> countries, List<RaceModel> races}),
          Failure>> searchRaceByNameOrCountry(String searchQuery);

  Future<ResultHandler<Set<String>, Failure>> getRaceTypes();
  Future<ResultHandler<Set<String>, Failure>> getRaceDistances();
  Future<ResultHandler<Set<String>, Failure>> getRaceDates();
  Future<ResultHandler<Set<String>, Failure>> getRaceLocations();
}
