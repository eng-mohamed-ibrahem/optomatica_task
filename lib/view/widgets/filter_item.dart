import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:optomatica_task/core/constants/app_metericies.dart';
import 'package:optomatica_task/view_model/home_viewmodel/home_viewmodel.dart';

class FilterItems extends StatefulWidget {
  const FilterItems({
    super.key,
    required this.items,
    required this.hint,
    this.value,
    required this.onChanged,
  });

  final List<DropdownMenuEntry<String>> items;
  final String? value;
  final String hint;
  final void Function(String?) onChanged;

  @override
  State<FilterItems> createState() => _FilterItemsState();
}

class _FilterItemsState extends State<FilterItems> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeViewmodel, HomeViewModelState>(
      builder: (context, state) {
        return DropdownMenu(
          dropdownMenuEntries: widget.items,
          hintText: widget.hint,
          initialSelection: widget.value,
          onSelected: widget.onChanged,
          textStyle: const TextStyle(
            color: Colors.white,
          ),
          menuStyle: MenuStyle(
            maximumSize: MaterialStatePropertyAll(
              Size.fromHeight(MediaQuery.sizeOf(context).height * .5),
            ),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(AppMetericies.borderRadius.r),
              ),
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            alignLabelWithHint: true,
            isDense: true,
            filled: true,
            fillColor: const Color.fromRGBO(28, 50, 95, 1),
            hintStyle: const TextStyle(
              color: Colors.white,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppMetericies.borderRadius.r),
            ),
          ),
        );
      },
    );
  }
}
