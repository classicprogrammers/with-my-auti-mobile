import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:svg_flutter/svg.dart';
import 'package:withmyauti/config/forgetController.dart';
import 'package:withmyauti/config/utils.dart';
import 'package:withmyauti/constants/app_colors.dart';
import 'package:withmyauti/constants/text_helper.dart';
import 'package:withmyauti/screens/authScreens/forgetPasswordVerificationCode.dart';
import 'package:withmyauti/widgets/authTextField.dart';
import 'package:withmyauti/widgets/common_button_widget.dart';
import 'package:withmyauti/widgets/customBackground.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final controller = Get.put(ForgetPasswordController());

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
          child: CommonButtonWidget(
            title: "Continue",
            onTap: () {
              Get.to(ForgotPasswordVerifyOtpScreen());
            },
          ),
        ),
        body:   GetBuilder<ForgetPasswordController>(
                    builder: (controller) {
                      return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  const BackButton(),
                  Center(
                    child: Image.asset('assets/images/logo.png', height: 200.h),
                  ),
                  Center(
                    child: SvgPicture.asset(
                      "assets/images/splashText.svg",
                      height: 60.h,
                    ),
                  ),
                  size70h,
                  customText(
                    text: "Forgot Password 🔑",
                    fontSize: 32.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 0, 0, 0),
                    textAlign: TextAlign.start,
                  ),
                  size10h,
                  customText(
                    text:
                        'Enter your ${controller.isPhoneMode ? "phone number" : "email address"} to get an OTP code\n to reset your password.',
                    fontSize: 18.sp,
                    color: Colors.black,
                  ),
                  size30h,
                  customText(
                    text:
                        controller.isPhoneMode ? "Phone Number" : "Email",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black212121,
                    textAlign: TextAlign.center,
                  ),
                  size10h,
              controller.isPhoneMode?    AuthTextField(
                    controller: controller.emailCtr,
                    hintText: 
                        'andrew.ainsley@yourdomain.com',
                    keyboardType: TextInputType.emailAddress,
                  ):  AuthTextField(
                    controller: controller.phoneCtr,
                    hintText:  '+1 234 567 8900'
                       ,
                    keyboardType: TextInputType.phone
                      
                  ),
                  size30h,
                  GestureDetector(
                    onTap: controller.toggleMode,
                    child: customText(
                      text: controller.isPhoneMode
                          ? "Switch to Email"
                          : "Switch to Phone Number",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(112, 112, 112, 1),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  size120h,
                ],
              ),
            ),
          );
  }),
      ),
    );
  }
}
