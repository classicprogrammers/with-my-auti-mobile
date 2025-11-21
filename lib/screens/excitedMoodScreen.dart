import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:withmyauti/config/utils.dart';
import 'package:withmyauti/constants/app_colors.dart';
import 'package:withmyauti/constants/text_helper.dart';
import 'package:withmyauti/widgets/activityCard.dart';
import 'package:withmyauti/widgets/customBackground.dart';

class ExcitedMoodScreen extends StatefulWidget {
  const ExcitedMoodScreen({super.key});
  

  @override
  State<ExcitedMoodScreen> createState() => _ExcitedMoodScreenState();
}

class _ExcitedMoodScreenState extends State<ExcitedMoodScreen> {
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

              Center(
                child: Image.asset(
                  'assets/images/logoText.png',
                  height: 38.h,
                  width: 138.w,
                ),
              ),

              size5h,

              Row(
                children: [
                  size20w,
                  const BackButton(),
                  customText(
                    text: 'Excited 🤩',
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),

              // size7h,

              // Padding(
              //   padding: const EdgeInsets.only(left: 28),
              //   child: customText(
              //     text: 'Light Fun Activity',
              //     color: AppColors.black212121,
              //     fontSize: 20.sp,
              //     fontWeight: FontWeight.w600,
              //   ),
              // ),

              size20h,
              GridView.count(crossAxisCount: 2,
              padding: EdgeInsets.only(left: 24),  
              
              crossAxisSpacing: 14.w,
              mainAxisSpacing: 11.h,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
              
                Activitycard(moodText: 'Calming mind'),
                Activitycard(moodText: 'Calming mind'),
                  Activitycard(moodText: 'Calming mind'),
                 Activitycard(moodText: 'Calming mind')
              ],
              )
            ],
          ),
        ),
      ),
    );
  }
}