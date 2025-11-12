import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:svg_flutter/svg.dart';
import 'package:withmyauti/config/utils.dart';
import 'package:withmyauti/constants/app_colors.dart';
import 'package:withmyauti/constants/text_helper.dart';
import 'package:withmyauti/screens/authScreens/signSelectionScreen.dart';
import 'package:withmyauti/screens/languageSelection/languageSelectionScreen.dart';
import 'package:withmyauti/widgets/common_button_widget.dart';
import 'package:withmyauti/widgets/customBackground.dart';

class ProfileCreateSuccessScreen extends StatefulWidget {
  const ProfileCreateSuccessScreen({Key? key}) : super(key: key);

  @override
  State<ProfileCreateSuccessScreen> createState() =>
      _ProfileCreateSuccessScreenState();
}

class _ProfileCreateSuccessScreenState
    extends State<ProfileCreateSuccessScreen> {
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
                Image.asset('assets/images/logo.png', height: 250.h),
                SvgPicture.asset("assets/images/splashText.svg"),
                size50h,
                customText(
                  text: "Welcome 👋",
                  fontSize: 39.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.purple6949FF,
                ),
                size50h,
                customText(
                  text: "Your profile has been created successfully.",
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.grey616161,
                  textAlign: TextAlign.center,
                ),

                Spacer(),
                CommonButtonWidget(
                  title: "CONTINUE TO LOGIN",
                  onTap: () {
                    Get.to(() => SignInSelectionScreen());
                  },
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
