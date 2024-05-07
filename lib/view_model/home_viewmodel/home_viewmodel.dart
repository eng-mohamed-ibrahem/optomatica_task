import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:optomatica_task/model/race_model.dart/race_model.dart';
import 'package:optomatica_task/repositories/race_repo/race_repo_interface.dart';

part 'home_viewmodel.freezed.dart';
part 'home_viewmodel_state.dart';

class HomeViewmodel extends Cubit<HomeViewModelState> {
  HomeViewmodel({required this.raceRepo}) : super(const HomeViewModelState());
  final RaceRepoInterface raceRepo;
  void getInitialRaces() async {
    emit(reset().copyWith(isGetInitialRacesLoading: true));
    final result = await raceRepo.getPaginationRaces(page: 1);
    result.when(
      success: (races) {
        emit(
          state.copyWith(
            isGetInitialRacesLoading: false,
            isGetInitialRacesSucess: true,
            races: races,
          ),
        );
      },
      failure: (error) {
        emit(
          state.copyWith(
            isGetInitialRacesLoading: false,
            isGetInitialRacesFailed: true,
            errorMessage: error.message,
          ),
        );
      },
    );
  }

  void getNxtPage() async {
    emit(reset().copyWith(isLoadingNextPage: true));
    final result =
        await raceRepo.getPaginationRaces(page: state.currentPage + 1);
    result.when(
      success: (races) {
        races.isNotEmpty
            ? emit(
                state.copyWith(
                  isLoadingNextPage: false,
                  races: [...state.races, ...races],
                  nextRaces: races,
                ),
              )
            : null;
      },
      failure: (error) {
        emit(
          state.copyWith(
            isLoadingNextPage: false,
            errorMessage: error.message,
          ),
        );
      },
    );
  }

  void searchRaceByNameOrCountry(String searchQuery) async {
    emit(reset().copyWith(isSearchLoading: true));
    final result = await raceRepo.searchRaceByNameOrCountry(searchQuery);
    result.when(
      success: (races) {
        emit(
          state.copyWith(
            isSearchLoading: false,
            isSearchSucess: true,
            searchRaces: [...races.countries, ...races.races],
          ),
        );
      },
      failure: (error) {
        emit(
          state.copyWith(
            isSearchLoading: false,
            isSearchFailed: true,
            errorMessage: error.message,
          ),
        );
      },
    );
  }

  void filterRaceBy({
    String? type,
    String? location,
    String? date,
    String? distance,
  }) async {
    emit(reset().copyWith(isFilterLoading: true));
    final result = await raceRepo.filterRaceBy(
      type: type ?? state.selectedType,
      location: location ?? state.selectedLocation,
      date: date ?? state.selectedDate,
      distance: distance ?? state.selectedDistance,
    );
    result.when(
      success: (races) {
        emit(
          state.copyWith(
            isFilterLoading: false,
            isFilterSucess: true,
            filterRaces: races,
            races: races,
            selectedType: type,
            selectedLocation: location,
            selectedDate: date,
            selectedDistance: distance,
          ),
        );
      },
      failure: (error) {
        emit(
          state.copyWith(
            isFilterLoading: false,
            isFilterFailed: true,
            errorMessage: error.message,
          ),
        );
      },
    );
  }

  void resetFilter() async {
    getInitialRaces();
    emit(state.copyWith(
      selectedDate: null,
      selectedDistance: null,
      selectedLocation: null,
      selectedType: null,
    ));
  }

  void getFilterData() async {
    emit(reset().copyWith(isFilterDataLoading: true));
    var raceDates = await raceRepo.getRaceDates();

    raceDates.when(
      success: (dates) {
        emit(
          state.copyWith(
            raceDates: dates,
          ),
        );
      },
      failure: (failure) {
        emit(
          state.copyWith(
            isFilterDataLoading: false,
            isFilterDataFailed: true,
            errorMessage: failure.message,
          ),
        );
      },
    );

    var raceDistances = await raceRepo.getRaceDistances();
    raceDistances.when(
      success: (distances) {
        emit(
          state.copyWith(
            raceDistances: distances,
          ),
        );
      },
      failure: (failure) {
        emit(
          state.copyWith(
            isFilterDataLoading: false,
            isFilterDataFailed: true,
            errorMessage: failure.message,
          ),
        );
      },
    );

    var raceLocations = await raceRepo.getRaceLocations();

    raceLocations.when(
      success: (locations) {
        emit(
          state.copyWith(
            raceLocations: locations,
          ),
        );
      },
      failure: (failure) {
        emit(
          state.copyWith(
            isFilterDataLoading: false,
            isFilterDataFailed: true,
            errorMessage: failure.message,
          ),
        );
      },
    );

    var raceTypes = await raceRepo.getRaceTypes();
    raceTypes.when(
      success: (types) {
        emit(
          state.copyWith(
            isFilterDataLoading: false,
            isFilterDataSuccess: true,
            racetypes: types,
          ),
        );
      },
      failure: (failure) {
        emit(
          state.copyWith(
            isFilterDataLoading: false,
            isFilterDataFailed: true,
            errorMessage: failure.message,
          ),
        );
      },
    );
  }

  HomeViewModelState reset() {
    return state.copyWith(
      isGetInitialRacesFailed: false,
      isGetInitialRacesLoading: false,
      isGetInitialRacesSucess: false,
      errorMessage: null,
      isLoadingNextPage: false,
      nextRaces: [],
      isSearchFailed: false,
      isSearchLoading: false,
      isSearchSucess: false,
      searchRaces: [],
      isFilterFailed: false,
      isFilterLoading: false,
      isFilterSucess: false,
      filterRaces: [],
      isFilterDataFailed: false,
      isFilterDataLoading: false,
    );
  }
}
