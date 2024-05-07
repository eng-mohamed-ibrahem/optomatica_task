import 'package:optomatica_task/core/failure/failure.dart';
import 'package:optomatica_task/core/result_handler/result_handler.dart';
import 'package:optomatica_task/data_source/race_data_source/race_source_interface.dart';
import 'package:optomatica_task/model/race_model.dart/race_model.dart';

part 'race_repo_impl.dart';

abstract class RaceRepoInterface {
  Future<ResultHandler<List<RaceModel>, Failure>> getPaginationRaces(
      {required int page});

  Future<
      ResultHandler<({List<RaceModel> countries, List<RaceModel> races}),
          Failure>> searchRaceByNameOrCountry(String searchQuery);

  Future<ResultHandler<List<RaceModel>, Failure>> filterRaceBy({
    String? type,
    String? location,
    String? date,
    String? distance,
  });

  Future<ResultHandler<Set<String>, Failure>> getRaceTypes();
  Future<ResultHandler<Set<String>, Failure>> getRaceDistances();
  Future<ResultHandler<Set<String>, Failure>> getRaceDates();
  Future<ResultHandler<Set<String>, Failure>> getRaceLocations();
}
