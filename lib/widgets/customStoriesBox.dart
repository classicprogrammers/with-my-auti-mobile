import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:withmyauti/config/utils.dart';
import 'package:withmyauti/constants/app_colors.dart';
import 'package:withmyauti/constants/text_helper.dart';
import 'package:withmyauti/widgets/customBackground.dart';
import 'package:get/get.dart';
class customStoriesBox extends StatelessWidget {
  const customStoriesBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 181.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.r),
        border: Border.all(
          color: AppColors.greyCACACA,
          width: 1.0,
          style: BorderStyle.solid,
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            size15h,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText(
                  text: 'Not Started:',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                ),
                Container(
                  width: 80.w,
                  height: 24.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
    
                    color: AppColors.greyD9D9D9,
                  ),
                  child: Center(
                    child: customText(
                      text: 'View All',
                      fontSize: 11.1.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            size20h,
            size10h,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/storiesImage.png',
                      width: 160.w,
                      height: 72.h,
                    ),
                    customText(
                      text: 'Space Adventure',
                      fontSize: 15.17.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/images/storiesImage.png',
                      width: 160.w,
                      height: 72.h,
                    ),
                    customText(
                      text: 'Puzzle Quest',
                      fontSize: 15.17.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
