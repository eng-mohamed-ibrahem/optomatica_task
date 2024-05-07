import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:optomatica_task/core/constants/app_constants.dart';
import 'package:optomatica_task/core/failure/failure.dart';
import 'package:optomatica_task/core/result_handler/result_handler.dart';
import 'package:optomatica_task/data_source/race_data_source/race_source_interface.dart';
import 'package:optomatica_task/model/race_model.dart/race_model.dart';

class LocaleRace implements RaceSourceInterface {
  @override
  Future<ResultHandler<List<RaceModel>, CacheFailure>> filterRaceBy({
    String? type,
    String? location,
    String? date,
    String? distance,
  }) async {
    try {
      var races = await fetchRacesFromAsset();
      return ResultHandler.success(
        data: races.where(
          (element) {
            return element.type.contains(type ?? '') &&
                element.country.contains(location ?? '') &&
                element.date.contains(date ?? '') &&
                element.distances.contains(distance ?? '');
          },
        ).toList(),
      );
    } catch (e) {
      return ResultHandler.failure(error: CacheFailure(message: e.toString()));
    }
  }

  @override
  Future<ResultHandler<List<RaceModel>, CacheFailure>> getPaginationRaces(
      {required int page}) async {
    try {
      var races = await fetchRacesFromAsset();
      return ResultHandler.success(
        data: races.take(page * AppConstants.racesPerPage).toList(),
      );
    } catch (e) {
      return ResultHandler.failure(error: CacheFailure(message: e.toString()));
    }
  }

  @override
  Future<
      ResultHandler<({List<RaceModel> countries, List<RaceModel> races}),
          CacheFailure>> searchRaceByNameOrCountry(String searchQuery) async {
    try {
      var races = await fetchRacesFromAsset();

      return ResultHandler.success(
        data: (
          countries: races
              .where((element) => element.country
                  .toLowerCase()
                  .contains(searchQuery.toLowerCase()))
              .toList(),
          races: races
              .where((element) => element.name
                  .toLowerCase()
                  .contains(searchQuery.toLowerCase()))
              .toList()
        ),
      );
    } catch (e) {
      return ResultHandler.failure(error: CacheFailure(message: e.toString()));
    }
  }

  Future<List<RaceModel>> fetchRacesFromAsset() async {
    var jsonData =
        await rootBundle.loadString('assets/races_data/races_data.json');
    return (jsonDecode(jsonData) as List)
        .map<RaceModel>((e) => RaceModel.fromJson(e))
        .toList();
  }

  @override
  Future<ResultHandler<Set<String>, Failure>> getRaceDates() async {
    try {
      var races = await fetchRacesFromAsset();
      return ResultHandler.success(
        data: races.map<String>((e) => e.date).toSet(),
      );
    } catch (e) {
      return ResultHandler.failure(error: CacheFailure(message: e.toString()));
    }
  }

  @override
  Future<ResultHandler<Set<String>, Failure>> getRaceDistances() async {
    try {
      var races = await fetchRacesFromAsset();
      return ResultHandler.success(
        data: races.map<String>((e) => e.distances).toSet(),
      );
    } catch (e) {
      return ResultHandler.failure(error: CacheFailure(message: e.toString()));
    }
  }

  @override
  Future<ResultHandler<Set<String>, Failure>> getRaceLocations() async {
    try {
      var races = await fetchRacesFromAsset();
      return ResultHandler.success(
        data: races.map<String>((e) => e.country).toSet(),
      );
    } catch (e) {
      return ResultHandler.failure(error: CacheFailure(message: e.toString()));
    }
  }

  @override
  Future<ResultHandler<Set<String>, Failure>> getRaceTypes() async {
    try {
      var races = await fetchRacesFromAsset();
      return ResultHandler.success(
        data: races.map<String>((e) => e.type).toSet(),
      );
    } catch (e) {
      return ResultHandler.failure(error: CacheFailure(message: e.toString()));
    }
  }
}
