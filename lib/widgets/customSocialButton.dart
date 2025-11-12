import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:withmyauti/config/utils.dart';
import 'package:withmyauti/constants/app_colors.dart';
import 'package:withmyauti/constants/text_helper.dart';

class CustomSocialButton extends StatelessWidget {
  final String title;
  final String icon;
  final Function onTap;

  const CustomSocialButton({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        height: 60.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(color: AppColors.whiteEEEEEE),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(icon, height: 24.h, width: 24.w),
            size10w,
            customText(
              text: title,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.black212121,
            ),
          ],
        ),
      ),
    );
  }
}
