import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:withmyauti/config/utils.dart';
import 'package:withmyauti/constants/app_colors.dart';
import 'package:withmyauti/constants/text_helper.dart';

class customMoodList extends StatelessWidget {
  final String moodEmoji;
  final String moodText;
  const customMoodList({
    required this.moodEmoji,
    required this.moodText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
     
          Expanded(
            flex: 1,
            child: Container(
              height: 45.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: AppColors.blue6020BD,
              ),
              child: Center(
                child: customText(
                  text: moodEmoji,
                  fontSize: 27.56.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
    
          size7w,
    
        
          Expanded(
            flex: 5,
            child: Container(
              height: 45.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: AppColors.blue6020BD,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  
                    customText(
                    text: moodText,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.whiteFFFFFF,
                  ),
                  
                  Image.asset('assets/images/nextIcon.png', width: 16.w, height: 14.h,fit: BoxFit.cover),
                
                  ],
                ),
              ),
              ),
            ),
          
        ],
      ),
    );
  }
}