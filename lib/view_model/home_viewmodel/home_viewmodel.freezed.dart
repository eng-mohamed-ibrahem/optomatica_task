// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeViewModelState {
  bool get isInitialized => throw _privateConstructorUsedError;

  /// initial state
  bool get isGetInitialRacesLoading => throw _privateConstructorUsedError;
  bool get isGetInitialRacesFailed => throw _privateConstructorUsedError;
  bool get isGetInitialRacesSucess => throw _privateConstructorUsedError;
  List<RaceModel> get races => throw _privateConstructorUsedError;

  /// get next page races
  int get currentPage => throw _privateConstructorUsedError;
  bool get isLoadingNextPage => throw _privateConstructorUsedError;
  List<RaceModel> get nextRaces => throw _privateConstructorUsedError;

  /// error message
  String? get errorMessage => throw _privateConstructorUsedError;

  /// search
  bool get isSearchLoading => throw _privateConstructorUsedError;
  bool get isSearchFailed => throw _privateConstructorUsedError;
  bool get isSearchSucess => throw _privateConstructorUsedError;
  List<RaceModel> get searchRaces => throw _privateConstructorUsedError;

  /// filter
  bool get isFilterLoading => throw _privateConstructorUsedError;
  bool get isFilterFailed => throw _privateConstructorUsedError;
  bool get isFilterSucess => throw _privateConstructorUsedError;
  List<RaceModel> get filterRaces => throw _privateConstructorUsedError;

  /// selected filter values
  String? get selectedType => throw _privateConstructorUsedError;
  String? get selectedDate => throw _privateConstructorUsedError;
  String? get selectedDistance => throw _privateConstructorUsedError;
  String? get selectedLocation => throw _privateConstructorUsedError;

  /// filter data
  bool get isFilterDataLoading => throw _privateConstructorUsedError;
  Set<String> get racetypes => throw _privateConstructorUsedError;
  Set<String> get raceDistances => throw _privateConstructorUsedError;
  Set<String> get raceDates => throw _privateConstructorUsedError;
  Set<String> get raceLocations => throw _privateConstructorUsedError;
  bool get isFilterDataSuccess => throw _privateConstructorUsedError;
  bool get isFilterDataFailed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeViewModelStateCopyWith<HomeViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeViewModelStateCopyWith<$Res> {
  factory $HomeViewModelStateCopyWith(
          HomeViewModelState value, $Res Function(HomeViewModelState) then) =
      _$HomeViewModelStateCopyWithImpl<$Res, HomeViewModelState>;
  @useResult
  $Res call(
      {bool isInitialized,
      bool isGetInitialRacesLoading,
      bool isGetInitialRacesFailed,
      bool isGetInitialRacesSucess,
      List<RaceModel> races,
      int currentPage,
      bool isLoadingNextPage,
      List<RaceModel> nextRaces,
      String? errorMessage,
      bool isSearchLoading,
      bool isSearchFailed,
      bool isSearchSucess,
      List<RaceModel> searchRaces,
      bool isFilterLoading,
      bool isFilterFailed,
      bool isFilterSucess,
      List<RaceModel> filterRaces,
      String? selectedType,
      String? selectedDate,
      String? selectedDistance,
      String? selectedLocation,
      bool isFilterDataLoading,
      Set<String> racetypes,
      Set<String> raceDistances,
      Set<String> raceDates,
      Set<String> raceLocations,
      bool isFilterDataSuccess,
      bool isFilterDataFailed});
}

/// @nodoc
class _$HomeViewModelStateCopyWithImpl<$Res, $Val extends HomeViewModelState>
    implements $HomeViewModelStateCopyWith<$Res> {
  _$HomeViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInitialized = null,
    Object? isGetInitialRacesLoading = null,
    Object? isGetInitialRacesFailed = null,
    Object? isGetInitialRacesSucess = null,
    Object? races = null,
    Object? currentPage = null,
    Object? isLoadingNextPage = null,
    Object? nextRaces = null,
    Object? errorMessage = freezed,
    Object? isSearchLoading = null,
    Object? isSearchFailed = null,
    Object? isSearchSucess = null,
    Object? searchRaces = null,
    Object? isFilterLoading = null,
    Object? isFilterFailed = null,
    Object? isFilterSucess = null,
    Object? filterRaces = null,
    Object? selectedType = freezed,
    Object? selectedDate = freezed,
    Object? selectedDistance = freezed,
    Object? selectedLocation = freezed,
    Object? isFilterDataLoading = null,
    Object? racetypes = null,
    Object? raceDistances = null,
    Object? raceDates = null,
    Object? raceLocations = null,
    Object? isFilterDataSuccess = null,
    Object? isFilterDataFailed = null,
  }) {
    return _then(_value.copyWith(
      isInitialized: null == isInitialized
          ? _value.isInitialized
          : isInitialized // ignore: cast_nullable_to_non_nullable
              as bool,
      isGetInitialRacesLoading: null == isGetInitialRacesLoading
          ? _value.isGetInitialRacesLoading
          : isGetInitialRacesLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isGetInitialRacesFailed: null == isGetInitialRacesFailed
          ? _value.isGetInitialRacesFailed
          : isGetInitialRacesFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isGetInitialRacesSucess: null == isGetInitialRacesSucess
          ? _value.isGetInitialRacesSucess
          : isGetInitialRacesSucess // ignore: cast_nullable_to_non_nullable
              as bool,
      races: null == races
          ? _value.races
          : races // ignore: cast_nullable_to_non_nullable
              as List<RaceModel>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      isLoadingNextPage: null == isLoadingNextPage
          ? _value.isLoadingNextPage
          : isLoadingNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      nextRaces: null == nextRaces
          ? _value.nextRaces
          : nextRaces // ignore: cast_nullable_to_non_nullable
              as List<RaceModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isSearchLoading: null == isSearchLoading
          ? _value.isSearchLoading
          : isSearchLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearchFailed: null == isSearchFailed
          ? _value.isSearchFailed
          : isSearchFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearchSucess: null == isSearchSucess
          ? _value.isSearchSucess
          : isSearchSucess // ignore: cast_nullable_to_non_nullable
              as bool,
      searchRaces: null == searchRaces
          ? _value.searchRaces
          : searchRaces // ignore: cast_nullable_to_non_nullable
              as List<RaceModel>,
      isFilterLoading: null == isFilterLoading
          ? _value.isFilterLoading
          : isFilterLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFilterFailed: null == isFilterFailed
          ? _value.isFilterFailed
          : isFilterFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isFilterSucess: null == isFilterSucess
          ? _value.isFilterSucess
          : isFilterSucess // ignore: cast_nullable_to_non_nullable
              as bool,
      filterRaces: null == filterRaces
          ? _value.filterRaces
          : filterRaces // ignore: cast_nullable_to_non_nullable
              as List<RaceModel>,
      selectedType: freezed == selectedType
          ? _value.selectedType
          : selectedType // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDistance: freezed == selectedDistance
          ? _value.selectedDistance
          : selectedDistance // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedLocation: freezed == selectedLocation
          ? _value.selectedLocation
          : selectedLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      isFilterDataLoading: null == isFilterDataLoading
          ? _value.isFilterDataLoading
          : isFilterDataLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      racetypes: null == racetypes
          ? _value.racetypes
          : racetypes // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      raceDistances: null == raceDistances
          ? _value.raceDistances
          : raceDistances // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      raceDates: null == raceDates
          ? _value.raceDates
          : raceDates // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      raceLocations: null == raceLocations
          ? _value.raceLocations
          : raceLocations // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      isFilterDataSuccess: null == isFilterDataSuccess
          ? _value.isFilterDataSuccess
          : isFilterDataSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isFilterDataFailed: null == isFilterDataFailed
          ? _value.isFilterDataFailed
          : isFilterDataFailed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeViewModelStateImplCopyWith<$Res>
    implements $HomeViewModelStateCopyWith<$Res> {
  factory _$$HomeViewModelStateImplCopyWith(_$HomeViewModelStateImpl value,
          $Res Function(_$HomeViewModelStateImpl) then) =
      __$$HomeViewModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isInitialized,
      bool isGetInitialRacesLoading,
      bool isGetInitialRacesFailed,
      bool isGetInitialRacesSucess,
      List<RaceModel> races,
      int currentPage,
      bool isLoadingNextPage,
      List<RaceModel> nextRaces,
      String? errorMessage,
      bool isSearchLoading,
      bool isSearchFailed,
      bool isSearchSucess,
      List<RaceModel> searchRaces,
      bool isFilterLoading,
      bool isFilterFailed,
      bool isFilterSucess,
      List<RaceModel> filterRaces,
      String? selectedType,
      String? selectedDate,
      String? selectedDistance,
      String? selectedLocation,
      bool isFilterDataLoading,
      Set<String> racetypes,
      Set<String> raceDistances,
      Set<String> raceDates,
      Set<String> raceLocations,
      bool isFilterDataSuccess,
      bool isFilterDataFailed});
}

/// @nodoc
class __$$HomeViewModelStateImplCopyWithImpl<$Res>
    extends _$HomeViewModelStateCopyWithImpl<$Res, _$HomeViewModelStateImpl>
    implements _$$HomeViewModelStateImplCopyWith<$Res> {
  __$$HomeViewModelStateImplCopyWithImpl(_$HomeViewModelStateImpl _value,
      $Res Function(_$HomeViewModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInitialized = null,
    Object? isGetInitialRacesLoading = null,
    Object? isGetInitialRacesFailed = null,
    Object? isGetInitialRacesSucess = null,
    Object? races = null,
    Object? currentPage = null,
    Object? isLoadingNextPage = null,
    Object? nextRaces = null,
    Object? errorMessage = freezed,
    Object? isSearchLoading = null,
    Object? isSearchFailed = null,
    Object? isSearchSucess = null,
    Object? searchRaces = null,
    Object? isFilterLoading = null,
    Object? isFilterFailed = null,
    Object? isFilterSucess = null,
    Object? filterRaces = null,
    Object? selectedType = freezed,
    Object? selectedDate = freezed,
    Object? selectedDistance = freezed,
    Object? selectedLocation = freezed,
    Object? isFilterDataLoading = null,
    Object? racetypes = null,
    Object? raceDistances = null,
    Object? raceDates = null,
    Object? raceLocations = null,
    Object? isFilterDataSuccess = null,
    Object? isFilterDataFailed = null,
  }) {
    return _then(_$HomeViewModelStateImpl(
      isInitialized: null == isInitialized
          ? _value.isInitialized
          : isInitialized // ignore: cast_nullable_to_non_nullable
              as bool,
      isGetInitialRacesLoading: null == isGetInitialRacesLoading
          ? _value.isGetInitialRacesLoading
          : isGetInitialRacesLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isGetInitialRacesFailed: null == isGetInitialRacesFailed
          ? _value.isGetInitialRacesFailed
          : isGetInitialRacesFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isGetInitialRacesSucess: null == isGetInitialRacesSucess
          ? _value.isGetInitialRacesSucess
          : isGetInitialRacesSucess // ignore: cast_nullable_to_non_nullable
              as bool,
      races: null == races
          ? _value._races
          : races // ignore: cast_nullable_to_non_nullable
              as List<RaceModel>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      isLoadingNextPage: null == isLoadingNextPage
          ? _value.isLoadingNextPage
          : isLoadingNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      nextRaces: null == nextRaces
          ? _value._nextRaces
          : nextRaces // ignore: cast_nullable_to_non_nullable
              as List<RaceModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isSearchLoading: null == isSearchLoading
          ? _value.isSearchLoading
          : isSearchLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearchFailed: null == isSearchFailed
          ? _value.isSearchFailed
          : isSearchFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearchSucess: null == isSearchSucess
          ? _value.isSearchSucess
          : isSearchSucess // ignore: cast_nullable_to_non_nullable
              as bool,
      searchRaces: null == searchRaces
          ? _value._searchRaces
          : searchRaces // ignore: cast_nullable_to_non_nullable
              as List<RaceModel>,
      isFilterLoading: null == isFilterLoading
          ? _value.isFilterLoading
          : isFilterLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFilterFailed: null == isFilterFailed
          ? _value.isFilterFailed
          : isFilterFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isFilterSucess: null == isFilterSucess
          ? _value.isFilterSucess
          : isFilterSucess // ignore: cast_nullable_to_non_nullable
              as bool,
      filterRaces: null == filterRaces
          ? _value._filterRaces
          : filterRaces // ignore: cast_nullable_to_non_nullable
              as List<RaceModel>,
      selectedType: freezed == selectedType
          ? _value.selectedType
          : selectedType // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDistance: freezed == selectedDistance
          ? _value.selectedDistance
          : selectedDistance // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedLocation: freezed == selectedLocation
          ? _value.selectedLocation
          : selectedLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      isFilterDataLoading: null == isFilterDataLoading
          ? _value.isFilterDataLoading
          : isFilterDataLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      racetypes: null == racetypes
          ? _value._racetypes
          : racetypes // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      raceDistances: null == raceDistances
          ? _value._raceDistances
          : raceDistances // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      raceDates: null == raceDates
          ? _value._raceDates
          : raceDates // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      raceLocations: null == raceLocations
          ? _value._raceLocations
          : raceLocations // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      isFilterDataSuccess: null == isFilterDataSuccess
          ? _value.isFilterDataSuccess
          : isFilterDataSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isFilterDataFailed: null == isFilterDataFailed
          ? _value.isFilterDataFailed
          : isFilterDataFailed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeViewModelStateImpl implements _HomeViewModelState {
  const _$HomeViewModelStateImpl(
      {this.isInitialized = true,
      this.isGetInitialRacesLoading = false,
      this.isGetInitialRacesFailed = false,
      this.isGetInitialRacesSucess = false,
      final List<RaceModel> races = const [],
      this.currentPage = 1,
      this.isLoadingNextPage = false,
      final List<RaceModel> nextRaces = const [],
      this.errorMessage = null,
      this.isSearchLoading = false,
      this.isSearchFailed = false,
      this.isSearchSucess = false,
      final List<RaceModel> searchRaces = const [],
      this.isFilterLoading = false,
      this.isFilterFailed = false,
      this.isFilterSucess = false,
      final List<RaceModel> filterRaces = const [],
      this.selectedType = null,
      this.selectedDate = null,
      this.selectedDistance = null,
      this.selectedLocation = null,
      this.isFilterDataLoading = false,
      final Set<String> racetypes = const <String>{},
      final Set<String> raceDistances = const <String>{},
      final Set<String> raceDates = const <String>{},
      final Set<String> raceLocations = const <String>{},
      this.isFilterDataSuccess = false,
      this.isFilterDataFailed = false})
      : _races = races,
        _nextRaces = nextRaces,
        _searchRaces = searchRaces,
        _filterRaces = filterRaces,
        _racetypes = racetypes,
        _raceDistances = raceDistances,
        _raceDates = raceDates,
        _raceLocations = raceLocations;

  @override
  @JsonKey()
  final bool isInitialized;

  /// initial state
  @override
  @JsonKey()
  final bool isGetInitialRacesLoading;
  @override
  @JsonKey()
  final bool isGetInitialRacesFailed;
  @override
  @JsonKey()
  final bool isGetInitialRacesSucess;
  final List<RaceModel> _races;
  @override
  @JsonKey()
  List<RaceModel> get races {
    if (_races is EqualUnmodifiableListView) return _races;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_races);
  }

  /// get next page races
  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final bool isLoadingNextPage;
  final List<RaceModel> _nextRaces;
  @override
  @JsonKey()
  List<RaceModel> get nextRaces {
    if (_nextRaces is EqualUnmodifiableListView) return _nextRaces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nextRaces);
  }

  /// error message
  @override
  @JsonKey()
  final String? errorMessage;

  /// search
  @override
  @JsonKey()
  final bool isSearchLoading;
  @override
  @JsonKey()
  final bool isSearchFailed;
  @override
  @JsonKey()
  final bool isSearchSucess;
  final List<RaceModel> _searchRaces;
  @override
  @JsonKey()
  List<RaceModel> get searchRaces {
    if (_searchRaces is EqualUnmodifiableListView) return _searchRaces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchRaces);
  }

  /// filter
  @override
  @JsonKey()
  final bool isFilterLoading;
  @override
  @JsonKey()
  final bool isFilterFailed;
  @override
  @JsonKey()
  final bool isFilterSucess;
  final List<RaceModel> _filterRaces;
  @override
  @JsonKey()
  List<RaceModel> get filterRaces {
    if (_filterRaces is EqualUnmodifiableListView) return _filterRaces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filterRaces);
  }

  /// selected filter values
  @override
  @JsonKey()
  final String? selectedType;
  @override
  @JsonKey()
  final String? selectedDate;
  @override
  @JsonKey()
  final String? selectedDistance;
  @override
  @JsonKey()
  final String? selectedLocation;

  /// filter data
  @override
  @JsonKey()
  final bool isFilterDataLoading;
  final Set<String> _racetypes;
  @override
  @JsonKey()
  Set<String> get racetypes {
    if (_racetypes is EqualUnmodifiableSetView) return _racetypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_racetypes);
  }

  final Set<String> _raceDistances;
  @override
  @JsonKey()
  Set<String> get raceDistances {
    if (_raceDistances is EqualUnmodifiableSetView) return _raceDistances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_raceDistances);
  }

  final Set<String> _raceDates;
  @override
  @JsonKey()
  Set<String> get raceDates {
    if (_raceDates is EqualUnmodifiableSetView) return _raceDates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_raceDates);
  }

  final Set<String> _raceLocations;
  @override
  @JsonKey()
  Set<String> get raceLocations {
    if (_raceLocations is EqualUnmodifiableSetView) return _raceLocations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_raceLocations);
  }

  @override
  @JsonKey()
  final bool isFilterDataSuccess;
  @override
  @JsonKey()
  final bool isFilterDataFailed;

  @override
  String toString() {
    return 'HomeViewModelState(isInitialized: $isInitialized, isGetInitialRacesLoading: $isGetInitialRacesLoading, isGetInitialRacesFailed: $isGetInitialRacesFailed, isGetInitialRacesSucess: $isGetInitialRacesSucess, races: $races, currentPage: $currentPage, isLoadingNextPage: $isLoadingNextPage, nextRaces: $nextRaces, errorMessage: $errorMessage, isSearchLoading: $isSearchLoading, isSearchFailed: $isSearchFailed, isSearchSucess: $isSearchSucess, searchRaces: $searchRaces, isFilterLoading: $isFilterLoading, isFilterFailed: $isFilterFailed, isFilterSucess: $isFilterSucess, filterRaces: $filterRaces, selectedType: $selectedType, selectedDate: $selectedDate, selectedDistance: $selectedDistance, selectedLocation: $selectedLocation, isFilterDataLoading: $isFilterDataLoading, racetypes: $racetypes, raceDistances: $raceDistances, raceDates: $raceDates, raceLocations: $raceLocations, isFilterDataSuccess: $isFilterDataSuccess, isFilterDataFailed: $isFilterDataFailed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeViewModelStateImpl &&
            (identical(other.isInitialized, isInitialized) ||
                other.isInitialized == isInitialized) &&
            (identical(
                    other.isGetInitialRacesLoading, isGetInitialRacesLoading) ||
                other.isGetInitialRacesLoading == isGetInitialRacesLoading) &&
            (identical(other.isGetInitialRacesFailed, isGetInitialRacesFailed) ||
                other.isGetInitialRacesFailed == isGetInitialRacesFailed) &&
            (identical(other.isGetInitialRacesSucess, isGetInitialRacesSucess) ||
                other.isGetInitialRacesSucess == isGetInitialRacesSucess) &&
            const DeepCollectionEquality().equals(other._races, _races) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.isLoadingNextPage, isLoadingNextPage) ||
                other.isLoadingNextPage == isLoadingNextPage) &&
            const DeepCollectionEquality()
                .equals(other._nextRaces, _nextRaces) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isSearchLoading, isSearchLoading) ||
                other.isSearchLoading == isSearchLoading) &&
            (identical(other.isSearchFailed, isSearchFailed) ||
                other.isSearchFailed == isSearchFailed) &&
            (identical(other.isSearchSucess, isSearchSucess) ||
                other.isSearchSucess == isSearchSucess) &&
            const DeepCollectionEquality()
                .equals(other._searchRaces, _searchRaces) &&
            (identical(other.isFilterLoading, isFilterLoading) ||
                other.isFilterLoading == isFilterLoading) &&
            (identical(other.isFilterFailed, isFilterFailed) ||
                other.isFilterFailed == isFilterFailed) &&
            (identical(other.isFilterSucess, isFilterSucess) ||
                other.isFilterSucess == isFilterSucess) &&
            const DeepCollectionEquality()
                .equals(other._filterRaces, _filterRaces) &&
            (identical(other.selectedType, selectedType) ||
                other.selectedType == selectedType) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.selectedDistance, selectedDistance) ||
                other.selectedDistance == selectedDistance) &&
            (identical(other.selectedLocation, selectedLocation) ||
                other.selectedLocation == selectedLocation) &&
            (identical(other.isFilterDataLoading, isFilterDataLoading) ||
                other.isFilterDataLoading == isFilterDataLoading) &&
            const DeepCollectionEquality().equals(other._racetypes, _racetypes) &&
            const DeepCollectionEquality().equals(other._raceDistances, _raceDistances) &&
            const DeepCollectionEquality().equals(other._raceDates, _raceDates) &&
            const DeepCollectionEquality().equals(other._raceLocations, _raceLocations) &&
            (identical(other.isFilterDataSuccess, isFilterDataSuccess) || other.isFilterDataSuccess == isFilterDataSuccess) &&
            (identical(other.isFilterDataFailed, isFilterDataFailed) || other.isFilterDataFailed == isFilterDataFailed));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isInitialized,
        isGetInitialRacesLoading,
        isGetInitialRacesFailed,
        isGetInitialRacesSucess,
        const DeepCollectionEquality().hash(_races),
        currentPage,
        isLoadingNextPage,
        const DeepCollectionEquality().hash(_nextRaces),
        errorMessage,
        isSearchLoading,
        isSearchFailed,
        isSearchSucess,
        const DeepCollectionEquality().hash(_searchRaces),
        isFilterLoading,
        isFilterFailed,
        isFilterSucess,
        const DeepCollectionEquality().hash(_filterRaces),
        selectedType,
        selectedDate,
        selectedDistance,
        selectedLocation,
        isFilterDataLoading,
        const DeepCollectionEquality().hash(_racetypes),
        const DeepCollectionEquality().hash(_raceDistances),
        const DeepCollectionEquality().hash(_raceDates),
        const DeepCollectionEquality().hash(_raceLocations),
        isFilterDataSuccess,
        isFilterDataFailed
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeViewModelStateImplCopyWith<_$HomeViewModelStateImpl> get copyWith =>
      __$$HomeViewModelStateImplCopyWithImpl<_$HomeViewModelStateImpl>(
          this, _$identity);
}

abstract class _HomeViewModelState implements HomeViewModelState {
  const factory _HomeViewModelState(
      {final bool isInitialized,
      final bool isGetInitialRacesLoading,
      final bool isGetInitialRacesFailed,
      final bool isGetInitialRacesSucess,
      final List<RaceModel> races,
      final int currentPage,
      final bool isLoadingNextPage,
      final List<RaceModel> nextRaces,
      final String? errorMessage,
      final bool isSearchLoading,
      final bool isSearchFailed,
      final bool isSearchSucess,
      final List<RaceModel> searchRaces,
      final bool isFilterLoading,
      final bool isFilterFailed,
      final bool isFilterSucess,
      final List<RaceModel> filterRaces,
      final String? selectedType,
      final String? selectedDate,
      final String? selectedDistance,
      final String? selectedLocation,
      final bool isFilterDataLoading,
      final Set<String> racetypes,
      final Set<String> raceDistances,
      final Set<String> raceDates,
      final Set<String> raceLocations,
      final bool isFilterDataSuccess,
      final bool isFilterDataFailed}) = _$HomeViewModelStateImpl;

  @override
  bool get isInitialized;
  @override

  /// initial state
  bool get isGetInitialRacesLoading;
  @override
  bool get isGetInitialRacesFailed;
  @override
  bool get isGetInitialRacesSucess;
  @override
  List<RaceModel> get races;
  @override

  /// get next page races
  int get currentPage;
  @override
  bool get isLoadingNextPage;
  @override
  List<RaceModel> get nextRaces;
  @override

  /// error message
  String? get errorMessage;
  @override

  /// search
  bool get isSearchLoading;
  @override
  bool get isSearchFailed;
  @override
  bool get isSearchSucess;
  @override
  List<RaceModel> get searchRaces;
  @override

  /// filter
  bool get isFilterLoading;
  @override
  bool get isFilterFailed;
  @override
  bool get isFilterSucess;
  @override
  List<RaceModel> get filterRaces;
  @override

  /// selected filter values
  String? get selectedType;
  @override
  String? get selectedDate;
  @override
  String? get selectedDistance;
  @override
  String? get selectedLocation;
  @override

  /// filter data
  bool get isFilterDataLoading;
  @override
  Set<String> get racetypes;
  @override
  Set<String> get raceDistances;
  @override
  Set<String> get raceDates;
  @override
  Set<String> get raceLocations;
  @override
  bool get isFilterDataSuccess;
  @override
  bool get isFilterDataFailed;
  @override
  @JsonKey(ignore: true)
  _$$HomeViewModelStateImplCopyWith<_$HomeViewModelStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
