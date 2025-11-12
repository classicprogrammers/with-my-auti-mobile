import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:svg_flutter/svg.dart';
import 'package:withmyauti/config/utils.dart';
import 'package:withmyauti/constants/app_colors.dart';
import 'package:withmyauti/constants/text_helper.dart';
import 'package:withmyauti/screens/splash/onBoardFirstScreen.dart';
import 'package:withmyauti/widgets/customBackground.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    _scaleAnimation = Tween<double>(
      begin: 0.8,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));

    _controller.forward();

    _navigateUser();
  }

  Future<void> _navigateUser() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString("token");

    Timer(const Duration(seconds: 3), () {
      if (token != null && token.isNotEmpty) {
        // Get.offAll(() => CustomBottomBarScreen(currentIndex: 0));
      } else {
        Get.offAll(() => OnBoardFirstScreen());
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: Scaffold(
        backgroundColor:
            Colors
                .transparent, // Transparent scaffold to allow background visibility
        body: Center(
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: ScaleTransition(
              scale: _scaleAnimation,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Image.asset('assets/images/logo.png', height: 200.h),
                  size50h,
                  SvgPicture.asset("assets/images/splashText.svg"),
                  Spacer(),
                  SpinKitCircle(
                    color: AppColors.blue38B6FF,
                    size: 60.0,
                    controller: AnimationController(
                      vsync: this,
                      duration: const Duration(milliseconds: 1200),
                    ),
                  ),
                  size40h,
                  customText(
                    text: " © 2025 WithMyAuti. All rights reserved",
                    fontSize: 17.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.grey616161.withOpacity(0.70),
                  ),
                  size40h,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
