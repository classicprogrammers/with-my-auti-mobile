import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:svg_flutter/svg.dart';
import 'package:withmyauti/config/utils.dart';
import 'package:withmyauti/constants/app_colors.dart';
import 'package:withmyauti/constants/text_helper.dart';
import 'package:withmyauti/screens/authScreens/chooseNameScreen.dart';
import 'package:withmyauti/screens/languageSelection/languageSelectionController.dart';
import 'package:withmyauti/widgets/common_button_widget.dart';
import 'package:withmyauti/widgets/customBackground.dart';

class LanguageSelectionScreen extends StatelessWidget {
  const LanguageSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LanguageSelectionController languageController = Get.put(
      LanguageSelectionController(),
    );

    return CustomBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
          child: CommonButtonWidget(
            title: "Continue",
            onTap: () {
              Get.to(() => ChooseNameScreen());
            },
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 60),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      BackButton(),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 40),
                          child: LinearProgressIndicator(
                            value: 0.1,
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
                  Row(
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/images/logo.png', height: 100.h),
                          SvgPicture.asset(
                            "assets/images/splashText.svg",
                            height: 40.h,
                          ),
                        ],
                      ),
                      Expanded(
                        child: Container(
                          height: 116.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/note_back.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                          alignment: Alignment.center,
                          child: customText(
                            text:
                                "What language do\nyou want to use for WithMyAuti?",
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.black212121,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                  size30h,
                  Divider(color: AppColors.whiteFFFFFF),
                  size30h,
                  customText(
                    text: "Your Native Language",
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black212121,
                  ),
                  size10h,
                  GetBuilder<LanguageSelectionController>(
                    builder: (controller) {
                      return Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        height: 64.h,
                        width: Get.width,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.primaryColor,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(24.r),
                        ),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  controller.selectedLanguageImage,
                                  height: 36.h,
                                  width: 55.w,
                                ),
                                size30w,
                                customText(
                                  text: controller.selectedLanguage,
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.black212121,
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  size20h,
                  customText(
                    text: "App Language",
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black212121,
                  ),
                  size10h,
                  Column(
                    children: [
                      _buildLanguageOption(
                        "Arabic",
                        'assets/images/arabic.png',
                        languageController,
                      ),
                      size10h,
                      _buildLanguageOption(
                        "English",
                        'assets/images/english.png',
                        languageController,
                      ),
                      size10h,
                      _buildLanguageOption(
                        "French",
                        'assets/images/french.png',
                        languageController,
                      ),
                      size10h,
                      _buildLanguageOption(
                        "Spanish",
                        'assets/images/spanish.png',
                        languageController,
                      ),
                      size10h,
                      _buildLanguageOption(
                        "German",
                        'assets/images/german.png',
                        languageController,
                      ),
                    ],
                  ),
                  size20h,

                  size20h,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLanguageOption(
    String language,
    String imagePath,
    LanguageSelectionController controller,
  ) {
    return GestureDetector(
      onTap: () {
        controller.changeLanguage(language, imagePath);
      },
      child: Container(
        height: 64.h,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColors.purple6949FF.withOpacity(0.06),
          borderRadius: BorderRadius.circular(24.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(imagePath, height: 36.h, width: 55.w),
            size30w,
            customText(
              text: language,
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.black212121,
            ),
          ],
        ),
      ),
    );
  }
}
