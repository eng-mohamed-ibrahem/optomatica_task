import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:optomatica_task/core/constants/app_metericies.dart';
import 'package:optomatica_task/core/utils/dependency_injection/dependency_locator.dart';
import 'package:optomatica_task/model/race_model.dart/race_model.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key, required this.controller});
  final TextEditingController controller;

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  ({List<RaceModel> countries, List<RaceModel> races}) searchResult =
      (countries: [], races: []);

  bool changed = false;

  @override
  Widget build(BuildContext context) {
    return TypeAheadField<RaceModel>(
      suggestionsCallback: (search) {
        return kRaceRepo.searchRaceByNameOrCountry(search).then(
          (result) {
            return result.when(
              success: (searchResult) {
                this.searchResult = searchResult;
                return [...searchResult.countries, ...searchResult.races];
              },
              failure: (failure) => throw Exception(failure.message),
            );
          },
        );
      },
      errorBuilder: (context, error) {
        return Text(error.toString());
      },
      emptyBuilder: (context) {
        return const Text('No races found');
      },
      itemBuilder: (context, suggestion) {
        return ListTile(
          title: Text(suggestion.name),
          subtitle: Text(suggestion.country),
        );
      },
      builder: (context, controller, focusNode) {
        return TextFormField(
          controller: controller,
          focusNode: focusNode,
          onChanged: (value) {
            if (!changed) {
              setState(() {
                log('changed');
                changed = true;
              });
            }
            if (value.isEmpty) {
              setState(() {
                changed = false;
              });
            }
            return;
          },
          onTapOutside: (event) =>
              FocusManager.instance.primaryFocus?.unfocus(),
          style: TextStyle(
            color: const Color.fromRGBO(142, 155, 195, 1),
            fontSize: AppMetericies.mediumFontSize.sp,
            fontWeight: FontWeight.w400,
          ),
          decoration: InputDecoration(
            suffixIcon: changed
                ? IconButton(
                    onPressed: () {
                      controller.clear();
                      setState(() {
                        changed = false;
                      });
                    },
                    icon: const Icon(
                      Icons.cancel_outlined,
                      color: Color.fromRGBO(247, 127, 0, 1),
                      size: AppMetericies.iconSize,
                    ),
                  )
                : IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: Color.fromRGBO(28, 50, 95, 1),
                      size: AppMetericies.iconSize,
                    ),
                  ),
            hintText: 'Search Race Name or Country',
            filled: true,
            fillColor: Colors.white,
            hintStyle: TextStyle(
              color: const Color.fromRGBO(142, 155, 195, 1),
              fontSize: AppMetericies.mediumFontSize.sp,
              fontWeight: FontWeight.w400,
            ),
            contentPadding: const EdgeInsets.all(AppMetericies.padding),
            isDense: true,
            enabledBorder: const OutlineInputBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(AppMetericies.borderRadius)),
              borderSide: BorderSide(
                color: Color.fromRGBO(205, 211, 228, 1),
                width: 1,
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(
                color: Color.fromRGBO(247, 127, 0, 1),
                width: 1,
              ),
            ),
          ),
        );
      },
      // listBuilder: (context, children) {
      //   return Padding(
      //     padding: const EdgeInsets.all(AppMetericies.padding),
      //     child: CustomScrollView(
      //       shrinkWrap: true,
      //       slivers: [
      //         if (searchResult.countries.isNotEmpty)
      //           const SliverToBoxAdapter(
      //             child: Text(
      //               'Countries',
      //               style: TextStyle(
      //                 color: Color.fromRGBO(0, 10, 53, 1),
      //                 fontSize: AppMetericies.mediumFontSize,
      //                 fontWeight: FontWeight.w500,
      //               ),
      //             ),
      //           ),
      //         SliverList(
      //           delegate: SliverChildListDelegate(
      //             children.take(searchResult.countries.length).toList(),
      //           ),
      //         ),
      //         if (searchResult.races.isNotEmpty)
      //           const SliverToBoxAdapter(
      //             child: Text(
      //               'Races',
      //               style: TextStyle(
      //                 color: Color.fromRGBO(0, 10, 53, 1),
      //                 fontSize: AppMetericies.mediumFontSize,
      //                 fontWeight: FontWeight.w500,
      //               ),
      //             ),
      //           ),
      //         SliverList(
      //           delegate: SliverChildListDelegate(
      //             children.skip(searchResult.countries.length).toList(),
      //           ),
      //         ),
      //       ],
      //     ),
      //   );
      // },
      onSelected: (suggestion) {
        widget.controller.text = suggestion.name;
        widget.controller.selection = TextSelection.fromPosition(
          TextPosition(offset: widget.controller.text.length),
        );
      },
      controller: widget.controller,
      hideKeyboardOnDrag: true,
      hideWithKeyboard: false,
      decorationBuilder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(AppMetericies.borderRadius.r),
            border: Border.all(
              color: const Color.fromRGBO(247, 127, 0, 1),
              width: 2,
            ),
          ),
          child: child,
        );
      },
    );
  }
}
