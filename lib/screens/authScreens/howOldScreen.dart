import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:withmyauti/config/utils.dart';
import 'package:withmyauti/constants/app_colors.dart';
import 'package:withmyauti/constants/text_helper.dart';
import 'package:withmyauti/screens/authScreens/emailAddressInputScreen.dart';
import 'package:withmyauti/widgets/authTextField.dart';
import 'package:withmyauti/widgets/common_button_widget.dart';
import 'package:withmyauti/widgets/customBackground.dart';

class HowOldScreen extends StatefulWidget {
  const HowOldScreen({Key? key}) : super(key: key);

  @override
  State<HowOldScreen> createState() => _HowOldScreenState();
}

class _HowOldScreenState extends State<HowOldScreen> {
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
              Get.to(() => EmailAddressInputScreen());
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
                          value: 0.3,
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
                  text: "How old are you? 🎂",
                  fontSize: 32.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black212121,
                  textAlign: TextAlign.center,
                ),
                size30h,
                customText(
                  text: "Age",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black212121,
                  textAlign: TextAlign.center,
                ),
                size10h,
                AuthTextField(
                  controller: TextEditingController(),
                  hintText: 'Age',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
