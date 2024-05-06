import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:optomatica_task/config/app_routes/app_routes.dart';
import 'package:optomatica_task/core/utils/dependency_injection/dependency_locator.dart';
import 'package:optomatica_task/view_model/home_viewmodel/home_viewmodel.dart';

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return BlocProvider(
          create: (context) => HomeViewmodel(
            raceRepo: kRaceRepo,
          )..getInitialRaces(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: AppRoutes.home,
            theme: ThemeData(
              fontFamily: 'Roboto',
            ),
            onGenerateRoute: AppRoutes.generate,
          ),
        );
      },
    );
  }
}
