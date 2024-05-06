import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:optomatica_task/core/constants/app_metericies.dart';

class RaceInfoInRaceCard extends StatelessWidget {
  const RaceInfoInRaceCard(
      {super.key, required this.title, required this.icon, this.trailing});
  final String title;
  final IconData icon;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      minVerticalPadding: 0,
      titleTextStyle: TextStyle(
        color: const Color.fromRGBO(28, 50, 95, 1),
        fontWeight: FontWeight.w500,
        fontSize: AppMetericies.smallFontSize.sp,
      ),
      leading: Icon(
        icon,
        color: const Color.fromRGBO(28, 50, 95, 1),
      ),
      trailing: trailing,
      title: Text(
        title,
      ),
      dense: true,
    );
  }
}
