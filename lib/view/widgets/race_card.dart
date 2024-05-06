import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:optomatica_task/core/constants/app_metericies.dart';
import 'package:optomatica_task/model/race_model.dart/race_model.dart';
import 'package:optomatica_task/view/widgets/race_info_item_in_race_card.dart';

class RaceCard extends StatelessWidget {
  const RaceCard({super.key, required this.race});
  final RaceModel race;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromRGBO(241, 244, 253, 1),
      elevation: 4,
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.symmetric(vertical: AppMetericies.verticalGap.h),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              "assets/images/${race.image}",
              fit: BoxFit.cover,
              height: MediaQuery.sizeOf(context).height * 0.3,
            ),
          ),
          SizedBox(width: AppMetericies.horizontalGap.w),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  race.name,
                  style: TextStyle(
                    color: const Color.fromRGBO(0, 10, 53, 1),
                    fontWeight: FontWeight.w900,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: AppMetericies.verticalGap.h),
                RichText(
                  strutStyle: StrutStyle(
                    fontSize: AppMetericies.smallFontSize.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    text: race.organizer != null ? 'Organized by\n' : '',
                    style: const TextStyle(
                      color: Color.fromRGBO(142, 155, 195, 1),
                    ),
                    children: [
                      TextSpan(
                        text: race.organizer ?? '',
                        style: const TextStyle(
                          color: Color.fromRGBO(247, 127, 0, 1),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: AppMetericies.verticalGap.h),
                RaceInfoInRaceCard(
                  title: '${race.distances.split(',').join('K, ')}K',
                  icon: Icons.track_changes_rounded,
                ),
                RaceInfoInRaceCard(
                  title: DateFormat('d MMM, yyyy')
                      .format(DateTime.parse(race.date)),
                  icon: Icons.calendar_month,
                  trailing: Icon(
                    Icons.share_outlined,
                    color: const Color.fromRGBO(247, 127, 0, 1),
                    size: AppMetericies.iconSize.r,
                  ),
                ),
                RaceInfoInRaceCard(
                  title: '${race.country}, ${race.city}',
                  icon: Icons.location_on,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
