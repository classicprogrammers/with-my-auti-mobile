import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:svg_flutter/svg.dart';
import 'package:withmyauti/config/utils.dart';
import 'package:withmyauti/constants/app_colors.dart';
import 'package:withmyauti/constants/app_styles.dart';
import 'package:withmyauti/constants/text_helper.dart';
import 'package:withmyauti/screens/consultationsScreen.dart';
import 'package:withmyauti/widgets/customBackground.dart';
import 'package:withmyauti/widgets/stepsContainer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  double currentValue = 0;
  final List<String> moodEmojis = ["🥺", "😐", "🙂", "😀", "😃"];
  int getEmojiIndex(double value) {
    return (value / 20).clamp(0, 4).toInt();
  }

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/draw.png',
                        width: 20.w,
                        height: 49.h,
                      ),

                      size20w,
                      Image.asset(
                        'assets/images/notification.png',
                        width: 20.w,
                        height: 49.h,
                      ),
                      size60w,
                      Image.asset(
                        'assets/images/logoText.png',
                        width: 138.w,
                        height: 49.h,
                      ),
                      size40w,
                      SvgPicture.asset(
                        'assets/images/email_love.svg',
                        width: 28.w,
                        height: 19.h,
                      ),

                      size10w,
                      CircleAvatar(
                        radius: 15.r,

                        backgroundImage: AssetImage(
                          'assets/images/profile.jpg',
                        ),
                      ),
                    ],
                  ),
                  size20h,
                  Container(
                    width: Get.width,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2.w),
                      image: DecorationImage(
                        image: AssetImage("assets/images/home_banner.png"),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(34.r),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        size10h,
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: customText(
                            text: 'Daily Summary',
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),

                        size12h,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            size10w,
                            Stack(
                              clipBehavior: Clip.none,
                              alignment: Alignment.topCenter,
                              children: [
                                Container(
                                  height: 49.h,
                                  width: 151.w,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.27),
                                    borderRadius: BorderRadius.circular(11.r),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: customText(
                                          text: 'Mom Mood',
                                          color: Colors.white,
                                          textAlign: TextAlign.center,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      size5h,
                                      SizedBox(
                                        height: 4.h,
                                        child: SliderTheme(
                                          data: SliderTheme.of(
                                            context,
                                          ).copyWith(
                                            trackHeight: 4,
                                            thumbColor: Colors.white,
                                            activeTrackColor: Colors.white,
                                            inactiveTrackColor: Color(
                                              0xffB4B4B4,
                                            ),
                                            overlayColor: Colors.white
                                                .withOpacity(0.2),
                                          ),
                                          child: Slider(
                                            value: currentValue,
                                            min: 0,
                                            max: 120,
                                            onChanged: (value) {
                                              setState(() {
                                                currentValue = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Positioned(
                                  top: -18.h,
                                  child: Container(
                                    padding: EdgeInsets.only(bottom: 1),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: Text(
                                      moodEmojis[getEmojiIndex(currentValue)],
                                      style: TextStyle(fontSize: 24.sp),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            size10w,
                            Container(
                              width: 151.w,
                              height: 49.h,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, .27),
                                borderRadius: BorderRadius.circular(11.r),
                              ),
                              child: Center(
                                child: customText(
                                  text: 'Daily Suggestion',
                                  textAlign: TextAlign.center,
                                  fontSize: 14.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            size10w,
                          ],
                        ),
                        size20h,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Expanded(
                            child: SizedBox(
                              height: 41.h,
                              child: TextFormField(
                                controller: SearchController(),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 1,
                                    horizontal: 10,
                                  ),

                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11.r),
                                    borderSide: BorderSide(
                                      color: AppColors.greyC0C0C0,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11.r),
                                    borderSide: BorderSide(
                                      color: AppColors.greyC0C0C0,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11.r),
                                    borderSide: BorderSide(
                                      color: AppColors.greyC0C0C0,
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'Let\'s search with WithMyAuti',
                                  hintStyle: TextStyle(
                                    fontSize: 14.sp,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.greyCDCDCD,
                                  ),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 15,
                                    ),
                                    child: Icon(Icons.search),
                                  ),
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 15,
                                    ),
                                    child: Icon(Icons.mic),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        size15h,
                      ],
                    ),
                  ),
                  size20h,
                  Container(
                    width: Get.width,
                    height: 197.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          offset: const Offset(0, 0),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        size16h,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            size20w,
                            customText(
                              text: 'Child Summary',
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                              color: AppColors.black0A0A0A,
                            ),
                            size60w,
                            Expanded(
                              flex: 2,
                              child: Container(
                                height: 26.h,
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [
                                      AppColors.primaryColor,
                                      AppColors.pinkD056B6,
                                    ],

                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: BorderRadius.circular(11),
                                ),
                                child: Center(
                                  child: customText(
                                    textAlign: TextAlign.start,

                                    text: 'Add Child Profile',
                                    fontSize: 11.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            size20w,
                          ],
                        ),
                        size20h,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            size30w,
                            Image.asset(
                              'assets/images/logo.png',
                              height: 86.h,
                              width: 104.w,
                            ),
                            size20w,
                            Column(
                              children: [
                                size10h,
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: customText(
                                    text: 'Welcome Shatha Alshaer 💜🌿',
                                    fontSize: 11.sp,
                                    textAlign: TextAlign.end,
                                    color: AppColors.primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: customText(
                                    text: 'Add your child profile 👶✨',
                                    fontSize: 11.sp,
                                    textAlign: TextAlign.end,
                                    color: AppColors.primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: customText(
                                    text:
                                        'and start your journey with WithMyAuti',

                                    fontSize: 11.sp,
                                    textAlign: TextAlign.end,
                                    color: AppColors.primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                customText(
                                  text: 'We here for you 💖',

                                  fontSize: 11.sp,
                                  textAlign: TextAlign.end,
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  size30h,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      ContainerList(
                        text: 'My Child Journey',
                        color: const Color(0xFF6955F4),
                        image: Image.asset(
                          'assets/images/childJorney.png',
                          width: 30.w,
                          height: 32.h,
                        ),
                      ),
                      ContainerList(
                        text: 'Our\n Moments',
                        gradient: LinearGradient(
                          colors: [Color(0xff6949FF), Color(0xffE15ABE)],
                        ),
                        image: Image.asset(
                          'assets/images/moments.png',
                          width: 30.w,
                          height: 32.h,
                        ),
                      ),
                      ContainerList(
                        text: 'Track\n My Child',
                        color: AppColors.primaryColor,

                        image: Image.asset(
                          'assets/images/track.png',
                          width: 30.w,
                          height: 32.h,
                        ),
                      ),
                      ContainerList(
                        text: 'My\n Moments',
                        gradient: LinearGradient(
                          colors: [Color(0xFF6020BD), Color(0xff6949FF)],
                        ),
                        image: Image.asset(
                          'assets/images/my_moments.png',
                          width: 30.w,
                          height: 32.h,
                        ),
                      ),
                    ],
                  ),
                  size10h,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
