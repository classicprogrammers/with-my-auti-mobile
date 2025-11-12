import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:withmyauti/config/utils.dart';
import 'package:withmyauti/constants/app_colors.dart';
import 'package:withmyauti/constants/text_helper.dart';
import 'package:withmyauti/screens/authScreens/createPasswordScreen.dart';
import 'package:withmyauti/widgets/authTextField.dart';
import 'package:withmyauti/widgets/common_button_widget.dart';
import 'package:withmyauti/widgets/customBackground.dart';

class EmailAddressInputScreen extends StatefulWidget {
  const EmailAddressInputScreen({Key? key}) : super(key: key);

  @override
  State<EmailAddressInputScreen> createState() =>
      _EmailAddressInputScreenState();
}

class _EmailAddressInputScreenState extends State<EmailAddressInputScreen> {
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
              Get.to(() => CreatePasswordScreen());
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
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 40),
                        child: LinearProgressIndicator(
                          value: 0.4,
                          minHeight: 12.h,
                          backgroundColor: AppColors.whiteEEEEEE,
                          color: AppColors.purple6949FF,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                  ],
                ),
                size20h,
                customText(
                  text: "What is your email address? ✉️ ",
                  fontSize: 32.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black212121,
                ),
                size30h,
                customText(
                  text: "Email",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black212121,
                  textAlign: TextAlign.center,
                ),
                size10h,
                AuthTextField(
                  controller: TextEditingController(),
                  hintText: 'Email',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
