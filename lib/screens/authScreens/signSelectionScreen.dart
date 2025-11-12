import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:svg_flutter/svg.dart';
import 'package:withmyauti/config/utils.dart';
import 'package:withmyauti/constants/app_colors.dart';
import 'package:withmyauti/constants/text_helper.dart';
import 'package:withmyauti/screens/authScreens/loginScreen.dart';
import 'package:withmyauti/screens/authScreens/signUpScreen.dart';
import 'package:withmyauti/widgets/common_button_widget.dart';
import 'package:withmyauti/widgets/customBackground.dart';
import 'package:withmyauti/widgets/customSocialButton.dart';

class SignInSelectionScreen extends StatefulWidget {
  const SignInSelectionScreen({Key? key}) : super(key: key);

  @override
  State<SignInSelectionScreen> createState() => _SignInSelectionScreenState();
}

class _SignInSelectionScreenState extends State<SignInSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(children: [BackButton()]),
                  Image.asset('assets/images/logo.png', height: 160.h),
                  SvgPicture.asset(
                    "assets/images/splashText.svg",
                    height: 60.h,
                  ),
                  size40h,
                  customText(
                    text: "Let’s you in",
                    fontSize: 38.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  size20h,
                  CustomSocialButton(
                    title: "Continue with Facebook",
                    icon: "assets/images/fb.png",
                    onTap: () {},
                  ),
                  size10h,
                  CustomSocialButton(
                    title: "Continue with Google",
                    icon: "assets/images/google.png",
                    onTap: () {},
                  ),
                  size10h,
                  CustomSocialButton(
                    title: "Continue with Apple",
                    icon: "assets/images/apple.png",
                    onTap: () {},
                  ),
                  size30h,
                  Row(
                    children: [
                      Expanded(child: Divider(color: AppColors.whiteEEEEEE)),
                      size10w,
                      customText(
                        text: 'Or',
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.grey616161,
                      ),
                      size10w,
                      Expanded(child: Divider(color: AppColors.whiteEEEEEE)),
                    ],
                  ),
                  size30h,
                  CommonButtonWidget(
                    title: "Sign in with email",
                    onTap: () {
                      Get.to(() => LoginScreen());
                    },
                  ),
                  size20h,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customText(
                        text: "Don’t have an account? ",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.grey9E9E9E,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => SignUpScreen());
                        },
                        child: customText(
                          text: "Sign up",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.purple6949FF,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
