import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:withmyauti/config/utils.dart';
import 'package:withmyauti/constants/app_colors.dart';
import 'package:withmyauti/constants/text_helper.dart';
import 'package:withmyauti/widgets/customBackground.dart';

class MommoodReportsScreen extends StatefulWidget {
  const MommoodReportsScreen({super.key});

  @override
  State<MommoodReportsScreen> createState() => _MommoodReportsScreenState();
}

class _MommoodReportsScreenState extends State<MommoodReportsScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Column(
              children: [
                size50h,
                Center(
                  child: Image.asset(
                    'assets/images/logoText.png',
                    height: 38.h,
                    width: 138.w,
                  ),
                ),
                Row(
                  children: [
                    BackButton(),
                    // size10w,
                    customText(
                      text: 'Mom Mood Reports',
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ],
                ),
                size15h,
                Container(
                  width: Get.width,
                  height: 150.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22.r),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: AppColors.black000000.withOpacity(0.9),
                    //     blurRadius: 43.2,
                    //     spreadRadius: 0,
                    //     offset: Offset(0, 4),
                    //   ),
                    // ],
                    border: Border.all(
                      color: AppColors.black656565.withOpacity(0.66),
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                    color: AppColors.whiteFFFFFF,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      size20w,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          size20h,
                          customText(
                            text: 'Monthly Snapshot',
                            fontSize: 17.sp,
                            color: AppColors.blue6020BD,
                            fontWeight: FontWeight.w700,
                          ),
                          size10h,
                          customText(
                            textAlign: TextAlign.start,
                            text: '7.5 / 10',
                            fontSize: 24.76.sp,
                            color: AppColors.black000000,
                            fontWeight: FontWeight.w700,
                          ),
                          size8h,
                          customText(
                            // textAlign: TextAlign.start,
                            text: 'Your Average Mood: Balanced',
                            fontSize: 17.21.sp,
                            color: AppColors.grey373737,
                            fontWeight: FontWeight.w700,
                          ),
                        ],
                      ),

                      Column(
                        children: [
                          size25h,
                          customText(
                            text: 'Weekly',
                            fontSize: 8.15.sp,
                            color: AppColors.grey323232,
                            fontWeight: FontWeight.w700,
                          ),
                          Container(
                            width: 59.w,
                            height: 20.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.r),
                              border: Border.all(
                                color: AppColors.blue6020BD,
                                width: 1.0,
                                style: BorderStyle.solid,
                              ),
                            ),
                            child: customText(
                              textAlign: TextAlign.center,
                              text: 'Monthly',
                              fontSize: 12.08.sp,
                              color: AppColors.blue6020BD,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          customText(
                            text: 'Half Yearly',
                            fontSize: 8.15.sp,
                            color: AppColors.grey323232,
                            fontWeight: FontWeight.w700,
                          ),
                          customText(
                            text: 'Yearly',
                            fontSize: 6.81.sp,
                            color: AppColors.grey323232,
                            fontWeight: FontWeight.w700,
                          ),
                        ],
                      ),
                      size40w,
                      // size10h,
                    ],
                  ),
                ),
                size7h,
                Container(
                  width: Get.width,
                  height: 43.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: AppColors.whiteFFFFFF,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.black000000.withOpacity(0.14),
                        blurRadius: 10.04,
                        spreadRadius: 0,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 13, right: 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customText(
                          text: 'Week 1',
                          fontSize: 17.01.sp,
                          color: AppColors.grey323232,
                          fontWeight: FontWeight.w700,
                        ),
                        customText(
                          text: 'Week 2',
                          fontSize: 17.01.sp,
                          color: AppColors.grey323232,
                          fontWeight: FontWeight.w700,
                        ),
                        customText(
                          text: 'Week 3',
                          fontSize: 17.01.sp,
                          color: AppColors.grey323232,
                          fontWeight: FontWeight.w700,
                        ),
                        customText(
                          text: 'Week 4',
                          fontSize: 17.01.sp,
                          color: AppColors.grey323232,
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                  ),
                ),
                size15h,

                Container(
                  width: Get.width,
                  height: 188.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22.r),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: AppColors.black000000.withOpacity(0.9),
                    //     blurRadius: 43.2,
                    //     spreadRadius: 0,
                    //     offset: Offset(0, 4),
                    //   ),
                    // ],
                    border: Border.all(
                      color: AppColors.black656565.withOpacity(0.66),
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                    color: AppColors.whiteFFFFFF,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                           customText(
                            text: 'Feeling Frequency BreakDown',
                            fontSize: 17.01.sp,
                            color: AppColors.blue6020BD,
                            fontWeight: FontWeight.w700,
                          ),
                            customText(
                            text: '😡    20 Times',
                            fontSize: 17.01.sp,
                            color: AppColors.grey323232,
                            fontWeight: FontWeight.w700,
                          ),
                            customText(
                            text: '🙂    10 Times',
                            fontSize: 17.01.sp,
                            color: AppColors.grey323232,
                            fontWeight: FontWeight.w700,
                          ),
                            customText(
                            text: '😄    10 Times',
                            fontSize: 17.01.sp,
                            color: AppColors.grey323232,
                            fontWeight: FontWeight.w700,
                          ),
                           
                      ],
                    ),
                  ),
                ),
                size15h,
                   Container(
                  width: Get.width,
                  height: 262.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22.r),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.black000000.withOpacity(0.25),
                        blurRadius: 36.6,
                        spreadRadius: 0,
                        offset: Offset(0, 4),
                      ),
                    ],
                    // border: Border.all(
                    //   color: AppColors.black656565.withOpacity(0.66),
                    //   width: 1.0,
                    //   style: BorderStyle.solid,
                    // ),
                    color: AppColors.whiteFFFFFF,
                  ),
                  child: LineChart(
                    LineChartData(
                      minX: 0,
                      maxX: 7,
                      minY: 0,
                                            maxY: 6,
                      lineBarsData: [
                        
                        LineChartBarData(
                         isCurved: true,
                        spots:[
                        FlSpot(0, 0.9),
                         FlSpot(0.2, 2),
                          FlSpot(0.8, 6),
                          FlSpot(7, 2),
                           FlSpot(0.7, 0),
                           FlSpot(0.3, 4),
                           FlSpot(0.8, 4),
                           FlSpot(0.7, 3),

                      ]),
                      ]
                    )
                  ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
