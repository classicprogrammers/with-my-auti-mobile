import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:withmyauti/config/utils.dart';
import 'package:withmyauti/constants/app_colors.dart';
import 'package:withmyauti/constants/text_helper.dart';
import 'package:withmyauti/widgets/customBackground.dart';
import 'package:withmyauti/widgets/customStoriesBox.dart';

class StoriesScreen extends StatefulWidget {
  const StoriesScreen({super.key});

  @override
  State<StoriesScreen> createState() => _StoriesScreenState();
}

class _StoriesScreenState extends State<StoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              size50h,
              Center(
                child: Image.asset(
                  'assets/images/logoText.png',
                  height: 38.h,
                  width: 138.h,
                ),
              ),
              Row(
                children: [
                  BackButton(),
                  size10w,
                  customText(
                    text: 'Stories',
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
              size10h,
              SizedBox(
                width: Get.width,
                height: 41.h,
                child: TextField(
                  controller: SearchController(),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 1,
                      horizontal: 10,
                    ),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11.r),
                      borderSide: BorderSide(color: AppColors.greyC0C0C0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11.r),
                      borderSide: BorderSide(color: AppColors.greyC0C0C0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11.r),
                      borderSide: BorderSide(color: AppColors.greyC0C0C0),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: 'nunito',
                      color: AppColors.greyCDCDCD,
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Icon(Icons.search),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Icon(Icons.mic),
                    ),
                  ),
                ),
              ),
              size15h,
              customStoriesBox(),
            ],
          ),
        ),
      ),
    );
  }
}

