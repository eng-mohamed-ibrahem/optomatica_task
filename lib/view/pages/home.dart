import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:optomatica_task/core/constants/app_metericies.dart';
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
        // bottom: ,
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
          return ListView.builder(
            shrinkWrap: true,
            controller: scrollController,
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: AppMetericies.padding.w),
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
          );
        },
      ),
    );
  }
}
