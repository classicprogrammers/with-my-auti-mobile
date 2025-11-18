import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:withmyauti/config/utils.dart';
import 'package:withmyauti/constants/app_colors.dart';
import 'package:withmyauti/constants/text_helper.dart';
import 'package:withmyauti/screens/authScreens/createNewPasswordScreen.dart';
import 'package:withmyauti/screens/authScreens/profileCreateSucessScreen.dart';
import 'package:withmyauti/widgets/common_button_widget.dart';
import 'package:withmyauti/widgets/customBackground.dart';

class ForgotPasswordVerifyOtpScreen extends StatefulWidget {
  const ForgotPasswordVerifyOtpScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordVerifyOtpScreen> createState() => _ForgotPasswordVerifyOtpScreenState();
}

class _ForgotPasswordVerifyOtpScreenState extends State<ForgotPasswordVerifyOtpScreen> {
  final TextEditingController _otpController = TextEditingController();
  int _remainingTime = 60;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _otpController.dispose();
    _timer.cancel();
    super.dispose();
  }

  // Start countdown timer
  void _startTimer() {
    _remainingTime = 60;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingTime > 0) {
        setState(() {
          _remainingTime--;
        });
      } else {
        _timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
          child: CommonButtonWidget(
            title: "Confirm",
            onTap: () {
              Get.to(() => CreateNewPasswordScreen());
            },
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [BackButton()]),
                size20h,
                customText(
                  text: "You’ve got mail 📩",
                  fontSize: 32.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black212121,
                ),
                size10h,
                customText(
                  text:
                      "We have sent the OTP verification code to your email address. Check your email and enter the code below.",
                  fontSize: 18.sp,
                  color: AppColors.black212121,
                ),
                size40h,
                PinCodeTextField(
                  controller: _otpController,
                  length: 4,
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  enableActiveFill: true,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(16.r),
                    fieldHeight: 70.h,
                    fieldWidth: 83.w,
                    activeBorderWidth: 1,
                    borderWidth: 1,
                    disabledBorderWidth: 1,
                    inactiveBorderWidth: 1,
                    selectedBorderWidth: 1,
                    errorBorderWidth: 1,
                    activeColor: AppColors.purple6949FF,
                    activeFillColor: AppColors.purple6949FF.withOpacity(0.08),
                    inactiveFillColor: AppColors.whiteFFFFFF,
                    selectedFillColor: AppColors.purple6949FF.withOpacity(0.08),
                    inactiveColor: AppColors.whiteFFFFFF,
                    selectedColor: AppColors.purple6949FF,
                  ),
                  onChanged: (value) {},
                  appContext: context,
                ),
                size20h,
                Center(
                  child: customText(
                    text: "Didn't receive email?",
                    fontSize: 18.sp,
                    color: AppColors.black212121,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                size10h,
                _remainingTime == 0
                    ? Center(
                      child: customText(
                        text: "Resend code",
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                        color: AppColors.purple6949FF,
                      ),
                    )
                    : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        customText(
                          text: "You can resend code in ",
                          fontSize: 18.sp,
                          color: AppColors.black212121,
                          fontWeight: FontWeight.w500,
                        ),
                        GestureDetector(
                          onTap: _remainingTime == 0 ? _startTimer : null,
                          child: customText(
                            text: "$_remainingTime s",
                            fontSize: 18.sp,
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
    );
  }
}
