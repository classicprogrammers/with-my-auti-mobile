import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:withmyauti/config/utils.dart';
import 'package:withmyauti/constants/app_colors.dart';
import 'package:withmyauti/constants/text_helper.dart';
import 'package:withmyauti/screens/languageSelection/languageSelectionScreen.dart';
import 'package:withmyauti/widgets/common_button_widget.dart';
import 'package:withmyauti/widgets/customBackground.dart';

class OnBoardFirstScreen extends StatefulWidget {
  const OnBoardFirstScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardFirstScreen> createState() => _OnBoardFirstScreenState();
}

class _OnBoardFirstScreenState extends State<OnBoardFirstScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Image.asset('assets/images/logo.png', height: 200.h),
                size50h,
                customText(
                  text: "Welcome!",
                  fontSize: 36.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryColor,
                ),
                size50h,
                customText(
                  text: "Because you and your child are part of us 👍",
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.grey616161,
                ),
                size5h,
                customText(
                  text: "Together, we are one humanity 🌍",
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.grey616161,
                ),
                size5h,

                customText(
                  text: "Hand in hand toward love and support 🩵",
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.grey616161,
                ),
                size20h,
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  height: 37.h,

                  width: Get.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [AppColors.pinkD056B6, AppColors.purple6949FF],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(17.sp),
                  ),
                  alignment: Alignment.center,
                  child: customText(
                    text: "WithMyAuti - Endorphin in every step together ✨",
                    fontWeight: FontWeight.bold,
                    fontSize: 15.sp,
                    color: AppColors.whiteFFFFFF,
                  ),
                ),
                Spacer(),
                CommonButtonWidget(
                  title: "GET STARTED",
                  onTap: () {
                    Get.to(() => LanguageSelectionScreen());
                  },
                ),
                size20h,
                Container(
                  height: 58.h,
                  alignment: Alignment.center,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: AppColors.whiteF0EDFF,
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                  child: customText(
                    text: "I ALREADY HAVE AN ACCOUNT",
                    color: AppColors.purple6949FF,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                size40h,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
