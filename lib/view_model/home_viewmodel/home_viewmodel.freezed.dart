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
      List<RaceModel> filterRaces});
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
      List<RaceModel> filterRaces});
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
      final List<RaceModel> filterRaces = const []})
      : _races = races,
        _nextRaces = nextRaces,
        _searchRaces = searchRaces,
        _filterRaces = filterRaces;

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

  @override
  String toString() {
    return 'HomeViewModelState(isInitialized: $isInitialized, isGetInitialRacesLoading: $isGetInitialRacesLoading, isGetInitialRacesFailed: $isGetInitialRacesFailed, isGetInitialRacesSucess: $isGetInitialRacesSucess, races: $races, currentPage: $currentPage, isLoadingNextPage: $isLoadingNextPage, nextRaces: $nextRaces, errorMessage: $errorMessage, isSearchLoading: $isSearchLoading, isSearchFailed: $isSearchFailed, isSearchSucess: $isSearchSucess, searchRaces: $searchRaces, isFilterLoading: $isFilterLoading, isFilterFailed: $isFilterFailed, isFilterSucess: $isFilterSucess, filterRaces: $filterRaces)';
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
            (identical(
                    other.isGetInitialRacesFailed, isGetInitialRacesFailed) ||
                other.isGetInitialRacesFailed == isGetInitialRacesFailed) &&
            (identical(
                    other.isGetInitialRacesSucess, isGetInitialRacesSucess) ||
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
                .equals(other._filterRaces, _filterRaces));
  }

  @override
  int get hashCode => Object.hash(
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
      const DeepCollectionEquality().hash(_filterRaces));

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
      final List<RaceModel> filterRaces}) = _$HomeViewModelStateImpl;

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
  @JsonKey(ignore: true)
  _$$HomeViewModelStateImplCopyWith<_$HomeViewModelStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
