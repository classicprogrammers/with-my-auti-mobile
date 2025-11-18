import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:withmyauti/config/utils.dart';
import 'package:withmyauti/constants/app_colors.dart';
import 'package:withmyauti/constants/text_helper.dart';
import 'package:withmyauti/screens/authScreens/verifyOtpScreen.dart';
import 'package:withmyauti/screens/homeLayout.dart';
import 'package:withmyauti/screens/mainScreen.dart';
import 'package:withmyauti/widgets/authTextField.dart';
import 'package:withmyauti/widgets/common_button_widget.dart';
import 'package:withmyauti/widgets/customBackground.dart';

class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({Key? key}) : super(key: key);

  @override
  State<CreateNewPasswordScreen> createState() => _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
   bool _rememberMe = false;
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
              Get.to(() => HomeLayout());
            },
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    BackButton(),
                 
                  ],
                ),
                size30h,
                customText(
                  text: "Create new password 🔐",
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black212121,
                ),
                size12h,
                customText(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                  text: 'Save the new password in a safe place, if you\n forget it then you have to do a forgot\n password again.'),

                SizedBox(height: 32.h,),
                customText(
                  text: "Create a new password",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black212121,
                  textAlign: TextAlign.center,
                ),

                AuthTextField(
                  controller: TextEditingController(),
                  hintText: '●●●●●●●●●●●●',
                  isPassword: true,
                     inputBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color:  Color(0xFF6949FF), width: 1.0),
                ),
                ),
                size20h,
                customText(
                  text: "Confirm a new password",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black212121,
                  textAlign: TextAlign.center,
                ),

                AuthTextField(
                  controller: TextEditingController(),
                  hintText: '●●●●●●●●●●●●',
   
                inputBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: const Color(0xFF6949FF),
 width: 1.0),
                ),
                  isPassword: true,
                ),
                size30h,
                 Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
