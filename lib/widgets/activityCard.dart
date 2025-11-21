import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:withmyauti/constants/app_colors.dart';
import 'package:withmyauti/constants/text_helper.dart';

class Activitycard extends StatefulWidget {
  final String moodText;
  const Activitycard({super.key, required this.moodText});

  @override
  State<Activitycard> createState() => _ActivitycardState();
}

class _ActivitycardState extends State<Activitycard> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(11.r),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 224.w,
            height: 199.h,
            decoration: BoxDecoration(
              // color: AppColors.black000000,
              border: Border.all(color: AppColors.greyC0C0C0),
            ),
            child: Image.asset('assets/images/cartoon.jpg', fit: BoxFit.cover),
          ),
          Icon(Icons.play_circle_filled, color: AppColors.blue6020BD, size: 34),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 48.h,

              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/blurShape.png'),
                  fit: BoxFit.fill,
                ),

                // color: AppColors.whiteFFFFFF.withOpacity(0.27)
              ),
              alignment: Alignment.center,
              child: customText(
                text: widget.moodText,
                fontSize: 16.sp,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w700,
                color: AppColors.whiteFFFFFF,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
