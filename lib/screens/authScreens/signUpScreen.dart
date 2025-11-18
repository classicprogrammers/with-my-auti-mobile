import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:svg_flutter/svg.dart';
import 'package:withmyauti/config/utils.dart';
import 'package:withmyauti/constants/app_colors.dart';
import 'package:withmyauti/constants/text_helper.dart';
import 'package:withmyauti/screens/authScreens/loginScreen.dart';
import 'package:withmyauti/widgets/common_button_widget.dart';
import 'package:withmyauti/widgets/customBackground.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _rememberMe = false;
  bool isExpanded = false;
  List roles = ["Mom", "Specialist"];
  String? selectedRole;
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
                  Image.asset('assets/images/logo.png', height: 100.h),

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
                  size20h,
                  InkWell(
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        isExpanded = !isExpanded;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 15.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          isExpanded ? 16.sp : 16.sp,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/images/role_icon.svg",
                                    height: 30.h,
                                    width: 30.w,
                                    color: AppColors.grey9E9E9E,
                                  ),
                                  size10w,
                                  customText(
                                    text: selectedRole ?? "Select your role",
                                    fontSize: 14.sp,

                                    color:
                                        selectedRole != null
                                            ? AppColors.black212121
                                            : AppColors.grey9E9E9E,
                                  ),
                                ],
                              ),
                              size10h,

                              Icon(
                                isExpanded
                                    ? Icons.expand_less
                                    : Icons.expand_more,
                                color: AppColors.black000000,
                              ),
                            ],
                          ),
                          if (isExpanded)
                            ...roles.map((role) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    isExpanded = false;
                                    selectedRole = role;
                                  });
                                },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8.h),
                                  child: Row(
                                    children: [
                                      customText(
                                        text: role ?? "",
                                        fontSize: 14.sp,
                                        color: AppColors.black000000,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }).toList(),
                        ],
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
                          Get.offAll(() => LoginScreen());
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
