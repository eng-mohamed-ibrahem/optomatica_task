import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:optomatica_task/core/constants/app_metericies.dart';
import 'package:optomatica_task/view/widgets/filter_item.dart';
import 'package:optomatica_task/view/widgets/race_card.dart';
import 'package:optomatica_task/view/widgets/search_field.dart';
import 'package:optomatica_task/view_model/home_viewmodel/home_viewmodel.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = TextEditingController();
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    scrollController.addListener(
      () {
        if (scrollController.offset >=
            scrollController.position.maxScrollExtent) {
          if (context.read<HomeViewmodel>().state.isGetInitialRacesSucess) {
            context.read<HomeViewmodel>().getNxtPage();
          }
        }
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchField(
          controller: controller,
        ),
      ),
      body: BlocBuilder<HomeViewmodel, HomeViewModelState>(
        builder: (context, state) {
          if (state.isGetInitialRacesFailed || state.isSearchFailed) {
            return Center(
              child: Text(state.errorMessage!),
            );
          }

          if (state.isGetInitialRacesLoading || state.isSearchLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Column(
            children: [
              const SizedBox(
                height: AppMetericies.verticalGap,
              ),
              SizedBox(
                height: 45.h,
                child: state.isFilterDataLoading
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : state.isFilterDataFailed
                        ? Center(
                            child: Text(state.errorMessage!),
                          )
                        : ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: [
                              if (state.selectedDate != null ||
                                  state.selectedDistance != null ||
                                  state.selectedLocation != null ||
                                  state.selectedType != null)
                                IconButton(
                                  style: IconButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromRGBO(28, 50, 95, 1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          AppMetericies.borderRadius.r),
                                    ),
                                  ),
                                  icon: const Icon(
                                    Icons.filter_alt_off_rounded,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    context.read<HomeViewmodel>().resetFilter();
                                  },
                                ),
                              const SizedBox(
                                width: AppMetericies.horizontalGap,
                              ),
                              FilterItems(
                                hint: "Types",
                                items: state.racetypes
                                    .map<DropdownMenuEntry<String>>(
                                      (e) => DropdownMenuEntry(
                                        value: e,
                                        label: e,
                                      ),
                                    )
                                    .toList(),
                                value: state.selectedType,
                                onChanged: (item) {
                                  context
                                      .read<HomeViewmodel>()
                                      .filterRaceBy(type: item);
                                },
                              ),
                              const SizedBox(
                                width: AppMetericies.horizontalGap,
                              ),
                              FilterItems(
                                hint: "Locations",
                                items: state.raceLocations
                                    .map<DropdownMenuEntry<String>>(
                                      (e) => DropdownMenuEntry(
                                        value: e,
                                        label: e,
                                      ),
                                    )
                                    .toList(),
                                value: state.selectedLocation,
                                onChanged: (item) {
                                  context
                                      .read<HomeViewmodel>()
                                      .filterRaceBy(location: item);
                                },
                              ),
                              const SizedBox(
                                width: AppMetericies.horizontalGap,
                              ),
                              FilterItems(
                                hint: "Distances",
                                items: state.raceDistances
                                    .map<DropdownMenuEntry<String>>(
                                      (e) => DropdownMenuEntry(
                                        value: e,
                                        label: e,
                                      ),
                                    )
                                    .toList(),
                                value: state.selectedDistance,
                                onChanged: (item) {
                                  context
                                      .read<HomeViewmodel>()
                                      .filterRaceBy(distance: item);
                                },
                              ),
                              const SizedBox(
                                width: AppMetericies.horizontalGap,
                              ),
                              FilterItems(
                                hint: "Dates",
                                items: state.raceDates
                                    .map<DropdownMenuEntry<String>>(
                                      (e) => DropdownMenuEntry(
                                        value: e,
                                        label: e,
                                      ),
                                    )
                                    .toList(),
                                value: state.selectedDate,
                                onChanged: (item) {
                                  context
                                      .read<HomeViewmodel>()
                                      .filterRaceBy(date: item);
                                },
                              ),
                              const SizedBox(
                                width: AppMetericies.horizontalGap,
                              ),
                            ],
                          ),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  controller: scrollController,
                  physics: const BouncingScrollPhysics(),
                  padding:
                      EdgeInsets.symmetric(horizontal: AppMetericies.padding.w),
                  itemBuilder: (context, index) {
                    if (index < state.races.length) {
                      return RaceCard(race: state.races[index]);
                    } else {
                      if (state.isLoadingNextPage) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else {
                        return const SizedBox();
                      }
                    }
                  },
                  itemCount: state.races.length + 1,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
