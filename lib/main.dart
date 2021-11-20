import 'package:country_code_picker/country_localizations.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/shared/helper/bloc_observer.dart';
import 'package:food_delivery/shared/helper/constants.dart';
import 'package:device_preview/device_preview.dart';

import 'layout/cubit/cubit.dart';
import 'layout/cubit/state.dart';
import 'modules/intro/intro_screen.dart';

void main() {

  Bloc.observer = MyBlocObserver();

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) => ScreenUtilInit(
        designSize: orientation == Orientation.portrait
            ? Size(428,926) : Size(926,428),
          builder: () => BlocProvider(
            create: (BuildContext context) => HomeCubit(),
            child: BlocConsumer<HomeCubit,HomeCubitState>(
              listener: (context,state) {},
              builder: (context,state) {
                return MaterialApp(
                  localizationsDelegates: const [
                    CountryLocalizations.delegate
                  ],
                  useInheritedMediaQuery: true,
                  locale: DevicePreview.locale(context),
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(
                    bottomNavigationBarTheme: BottomNavigationBarThemeData(
                      backgroundColor: Colors.white,
                      selectedItemColor: primaryColor,
                      unselectedItemColor: Colors.black
                    ),
                    primarySwatch: myRed,
                    primaryColor: primaryColor,
                    appBarTheme: const AppBarTheme(
                      color: opacityPrimaryColor,
                      elevation: 0.0,
                      systemOverlayStyle: SystemUiOverlayStyle(
                        statusBarColor: Colors.white,
                        statusBarIconBrightness: Brightness.dark,
                      ),
                    ),
                    scaffoldBackgroundColor: opacityPrimaryColor,
                  ),
                  home: IntroScreen(),
                );
              },
            ),
          )),
    );
  }
}
