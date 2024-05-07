part of 'home_viewmodel.dart';

@freezed
class HomeViewModelState with _$HomeViewModelState {
  const factory HomeViewModelState({
    @Default(true) bool isInitialized,

    /// initial state
    @Default(false) bool isGetInitialRacesLoading,
    @Default(false) bool isGetInitialRacesFailed,
    @Default(false) bool isGetInitialRacesSucess,
    @Default([]) List<RaceModel> races,

    /// get next page races
    @Default(1) int currentPage,
    @Default(false) bool isLoadingNextPage,
    @Default([]) List<RaceModel> nextRaces,

    /// error message
    @Default(null) String? errorMessage,

    /// search
    @Default(false) bool isSearchLoading,
    @Default(false) bool isSearchFailed,
    @Default(false) bool isSearchSucess,
    @Default([]) List<RaceModel> searchRaces,

    /// filter
    @Default(false) bool isFilterLoading,
    @Default(false) bool isFilterFailed,
    @Default(false) bool isFilterSucess,
    @Default([]) List<RaceModel> filterRaces,

    /// selected filter values
    @Default(null) String? selectedType,
    @Default(null) String? selectedDate,
    @Default(null) String? selectedDistance,
    @Default(null) String? selectedLocation,

    /// filter data
    @Default(false) bool isFilterDataLoading,
    @Default(<String>{}) Set<String> racetypes,
    @Default(<String>{}) Set<String> raceDistances,
    @Default(<String>{}) Set<String> raceDates,
    @Default(<String>{}) Set<String> raceLocations,
    @Default(false) bool isFilterDataSuccess,
    @Default(false) bool isFilterDataFailed,
  }) = _HomeViewModelState;
}
