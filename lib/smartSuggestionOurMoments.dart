import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:withmyauti/config/utils.dart';
import 'package:withmyauti/constants/app_colors.dart';
import 'package:withmyauti/constants/text_helper.dart';
import 'package:withmyauti/models/smartSuggestionsModel.dart';
import 'package:withmyauti/widgets/customBackground.dart';
import 'package:withmyauti/widgets/smartSuggestionCard.dart';

class Smartsuggestionsourmoments extends StatefulWidget {
  // final List<SmartSuggestion> suggestionList;

  // Smartsuggesti/onsourmoments({super.key})
    
  // List<SmartSuggestion> get suggestionList => Widget.suggestionList;
  //  const ({super.key});

  @override
  State<Smartsuggestionsourmoments> createState() =>
      _SmartsuggestionsourmomentsState();
}

class _SmartsuggestionsourmomentsState
    extends State<Smartsuggestionsourmoments> {
 final List<SmartSuggestion> suggestionList = [
        SmartSuggestion(
          suggestionText: 'Play this Game\n with your Child.',
          color: AppColors.blue6020BD.withOpacity(0.53),
          imagePath: 'assets/images/cardImage.png',
        ),
        SmartSuggestion(
          suggestionText: 'Listen to this\n music with your\n Child.',
          color: AppColors.grey9F5FB3.withOpacity(0.76),
          imagePath: 'assets/images/cardImage.png',
        ),
        SmartSuggestion(
          suggestionText: 'Read this story\n with your Child.',
          color: AppColors.yellowFFCC4D.withOpacity(0.78),
          imagePath: 'assets/images/cardImage.png',
        ),
        SmartSuggestion(
          suggestionText: 'Play this Game\n with your Child.',
      color: AppColors.black517EB9.withOpacity(0.78),
          imagePath: 'assets/images/cardImage.png',
        ),
        SmartSuggestion(
          suggestionText: 'Listen to this\n music with your\n Child.',
          color: AppColors.blue570B7F.withOpacity(0.78),
          imagePath: 'assets/images/cardImage.png',
        ),
      ];
  final double cardHeightWithSpacing = 87.0.h + 12.0.h;
  @override
  Widget build(BuildContext context) {
    double listViewHeight = cardHeightWithSpacing * suggestionList.length;
    return CustomBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Center(
                  child: Image.asset(
                    'assets/images/logoText.png',
                    height: 38.h,
                    width: 138.h,
                  ),
                ),
              ),
              Row(
                children: [
                  BackButton(),
                  size10w,
                  customText(
                    text: 'Smart Suggestions',
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
              size7h,
              Container(
                width: Get.width,

                height: 221.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22.r),
                  border: Border.all(
                    color: AppColors.greyCACACA, 
                    width: 1.0, // The thickness of the border
                    style: BorderStyle.solid, // Usually solid, can be none
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      size20h,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/thinkIcons.png',
                            width: 62.w,
                            height: 62.h,
                          ),
                          size20w,
                          Image.asset(
                            'assets/images/smartTip.png',
                            height: 33.h,
                            width: 216.w,
                          ),
                        ],
                      ),
                      size24h,
                      customText(
                        text:
                            'Lorem Ipsum is simply dummy text of the\n printing and typesetting industry. ',
                        color: AppColors.primaryColor,
                        fontSize: 16.71.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      size20h,
                      Row(
                        children: [
                          Container(
                            width: 113.w,
                            height: 29.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11.r),
                              border: Border.all(
                                color: AppColors.black868686,
                                width: 1.0,
                                style: BorderStyle.solid,
                              ),
                            ),
                            child: Center(
                              child: customText(
                                text: 'Mark as Done',
                                fontWeight: FontWeight.w700,
                                fontSize: 11.83.sp,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          size5w,
                          Container(
                            width: 113.w,
                            height: 29.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11.r),
                              border: Border.all(
                                color: AppColors.black868686, 
                                width: 1.0, 
                                style:
                                    BorderStyle
                                        .solid, // Usually solid, can be none
                              ),
                            ),
                            child: Center(
                              child: customText(
                                text: 'Add to Reminder',
                                fontWeight: FontWeight.w700,
                                fontSize: 11.83.sp,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          size5w,
                          Container(
                            width: 113.w,
                            height: 29.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11.r),
                              border: Border.all(
                                color: AppColors.black868686, 
                                width: 1.0, 
                                style:
                                    BorderStyle
                                        .solid, 
                              ),
                            ),
                            child: Center(
                              child: customText(
                                text: 'Try Now',
                                fontWeight: FontWeight.w700,
                                fontSize: 11.83.sp,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          size5w,
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              size16h,
              Padding(
                padding: const EdgeInsets.only(left: 4),
                child: customText(
                  text: 'Bonding Moments',
                  fontWeight: FontWeight.w700,
                  fontSize: 20.sp,
                ),
              ),

              Expanded(
                flex: 1,
                child: ListView.builder(
                  itemCount: suggestionList.length,
                  // physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    final SmartSuggestion item = suggestionList[index];

                    return Smartsuggestioncard(suggestion: item);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
