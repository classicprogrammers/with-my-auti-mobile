import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:withmyauti/config/utils.dart';
import 'package:withmyauti/constants/app_colors.dart';
import 'package:withmyauti/constants/text_helper.dart';
import 'package:withmyauti/screens/excitedMoodScreen.dart';
import 'package:withmyauti/screens/happyMoodScreen.dart';
import 'package:withmyauti/widgets/activityCard.dart';
import 'package:withmyauti/widgets/customBackground.dart';
import 'package:withmyauti/widgets/customMoodList.dart';

class DailySuggestionsScreen extends StatefulWidget {
  const DailySuggestionsScreen({super.key});

  @override
  State<DailySuggestionsScreen> createState() => _DailySuggestionsScreenState();
}

class _DailySuggestionsScreenState extends State<DailySuggestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              size50h,

              /// LOGO
              Center(
                child: Image.asset(
                  'assets/images/logoText.png',
                  height: 38.h,
                  width: 138.w,
                ),
              ),

              size5h,

              /// BACK + TITLE
              Row(
                children: [
                  size20w,
                  const BackButton(),
                  customText(
                    text: 'Daily suggestion',
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),

              size7h,

              /// SUBTITLE
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: customText(
                  text: 'Select According  Your Mood',
                  color: AppColors.black212121,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),

              size20h,

              InkWell(
                onTap: () {
                  Get.to(()=> HappyMoodScreen());
                },
                child: customMoodList(moodEmoji: '😄', moodText: 'Happy')),

              size8h,
              InkWell
              ( onTap: () {
                  Get.to(()=> ExcitedMoodScreen());
                },
                
                child: customMoodList(moodEmoji: '🤩', moodText: 'Excited')),
              size8h,
              customMoodList(moodEmoji: '😪', moodText: 'Tired'),
                    size8h,
              customMoodList(moodEmoji: '😩', moodText: 'Stressed'),
                   size8h,
              customMoodList(moodEmoji: '😞', moodText: 'Sad'),
                   size8h,
              customMoodList(moodEmoji: '💪', moodText: 'Strength'),
           

            ],
          ),
        ),
      ),
    );
  }
}
