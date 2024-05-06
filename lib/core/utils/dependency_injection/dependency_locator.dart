import 'package:get_it/get_it.dart';
import 'package:optomatica_task/data_source/race_data_source/locale_race.dart';
import 'package:optomatica_task/repositories/race_repo/race_repo_interface.dart';

var _getIt = GetIt.instance;

void setupLocator() async {
  _getIt.registerSingleton<RaceRepoInterface>(
    RaceRepoImpl(raceDataSource: LocaleRace()),
  );
}

var kRaceRepo = _getIt<RaceRepoInterface>();
