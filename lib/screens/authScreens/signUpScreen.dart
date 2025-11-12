import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';
import 'package:withmyauti/config/utils.dart';
import 'package:withmyauti/constants/app_colors.dart';
import 'package:withmyauti/constants/text_helper.dart';
import 'package:withmyauti/widgets/common_button_widget.dart';
import 'package:withmyauti/widgets/customBackground.dart';
import 'package:withmyauti/widgets/customSocialButton.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
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
                    text: "Create Your Account",
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  size20h,

                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          bottom: 15,
                          left: 10,
                        ),
                        child: SvgPicture.asset("assets/images/email.svg"),
                      ),
                      hintText: 'Email',
                      filled: true,
                      hintStyle: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.grey9E9E9E,
                        fontFamily: 'Nunito',
                      ),
                      fillColor: AppColors.whiteFFFFFF,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 16.h,
                        horizontal: 10.w,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.r),
                        borderSide: BorderSide(
                          color: AppColors.whiteFFFFFF, // Border color
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.r),
                        borderSide: BorderSide(
                          color: AppColors.whiteFFFFFF, // Border color
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.r),
                        borderSide: BorderSide(
                          color: AppColors.whiteFFFFFF, // Border color
                        ),
                      ),
                    ),
                  ),
                  size20h,

                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,

                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          bottom: 15,
                          left: 10,
                        ),
                        child: SvgPicture.asset("assets/images/password.svg"),
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: 'Nunito',
                        color: AppColors.grey9E9E9E,
                      ),
                      filled: true,
                      fillColor: AppColors.whiteFFFFFF,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 16.h,
                        horizontal: 10.w,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.r),
                        borderSide: BorderSide(
                          color: AppColors.whiteFFFFFF, // Border color
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.r),
                        borderSide: BorderSide(
                          color: AppColors.whiteFFFFFF, // Border color
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.r),
                        borderSide: BorderSide(
                          color: AppColors.whiteFFFFFF, // Border color
                        ),
                      ),
                    ),
                  ),
                  size30h,

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _rememberMe = !_rememberMe;
                          });
                        },
                        child: Container(
                          height: 24.h,
                          width: 24.w,
                          decoration: BoxDecoration(
                            color:
                                _rememberMe
                                    ? AppColors.purple6949FF
                                    : Colors.transparent,
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(
                              color: AppColors.purple6949FF, // Border color
                              width: 2.0,
                            ),
                          ),
                          child:
                              _rememberMe
                                  ? Icon(
                                    Icons.check,
                                    size: 18.w,
                                    color: Colors.white,
                                  )
                                  : null,
                        ),
                      ),
                      size10w,
                      customText(
                        text: "Remember me",
                        fontSize: 14.sp,
                        color: AppColors.black212121,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  size30h,

                  CommonButtonWidget(title: "Sign up", onTap: () {}),
                  size20h,
                  Row(
                    children: [
                      Expanded(child: Divider(color: AppColors.whiteEEEEEE)),
                      size10w,
                      customText(
                        text: 'or continue with',
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.grey616161,
                      ),
                      size10w,
                      Expanded(child: Divider(color: AppColors.whiteEEEEEE)),
                    ],
                  ),
                  size20h,

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 60.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16.r),
                              border: Border.all(color: AppColors.whiteEEEEEE),
                            ),
                            child: Image.asset(
                              "assets/images/fb.png",
                              height: 24.h,
                              width: 24.w,
                            ),
                          ),
                        ),
                      ),
                      size15w,
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 60.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16.r),
                              border: Border.all(color: AppColors.whiteEEEEEE),
                            ),
                            child: Image.asset(
                              "assets/images/google.png",
                              height: 24.h,
                              width: 24.w,
                            ),
                          ),
                        ),
                      ),
                      size15w,
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 60.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16.r),
                              border: Border.all(color: AppColors.whiteEEEEEE),
                            ),
                            child: Image.asset(
                              "assets/images/apple.png",
                              height: 24.h,
                              width: 24.w,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  size20h,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customText(
                        text: "Already have an account? ",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.grey9E9E9E,
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigate to Sign In screen
                        },
                        child: customText(
                          text: "Sign in",
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
