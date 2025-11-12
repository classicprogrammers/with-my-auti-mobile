import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:withmyauti/screens/splash/splash_screen.dart';

class WithMyAuti extends StatefulWidget {
  const WithMyAuti({Key? key}) : super(key: key);

  @override
  State<WithMyAuti> createState() => _WithMyAutiState();
}

class _WithMyAutiState extends State<WithMyAuti> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'With My Auti',
          theme: ThemeData(
            fontFamily: 'Nunito',
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          home: const SplashScreen(),
        );
      },
    );
  }
}
