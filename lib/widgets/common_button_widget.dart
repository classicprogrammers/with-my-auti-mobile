import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:withmyauti/constants/app_colors.dart';
import 'package:withmyauti/constants/text_helper.dart';

class CommonButtonWidget extends StatefulWidget {
  final String title;
  final Function()? onTap;
  final double? fontSize;
  final double? borderRadius;
  final double? height;
  final double? width;
  final FontWeight? fontWeight;
  final Color? backGroundColor;
  final Color? textColor;
  final bool? isBorder;
  final bool? isShadow;

  const CommonButtonWidget({
    super.key,
    required this.title,
    this.onTap,
    this.fontSize,
    this.height,
    this.fontWeight,
    this.width,
    this.borderRadius,
    this.backGroundColor,
    this.textColor,
    this.isBorder,
    this.isShadow = true,
  });

  @override
  State<CommonButtonWidget> createState() => _CommonButtonWidgetState();
}

class _CommonButtonWidgetState extends State<CommonButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        height: widget.height ?? 50.h,
        width: widget.width ?? Get.width,
        decoration: BoxDecoration(
          border: Border.all(
            color:
                widget.isBorder == true
                    ? AppColors.primaryColor
                    : Colors.transparent,
          ),
          gradient: LinearGradient(
            colors: [AppColors.purpleB09FFF, AppColors.purple6949FF],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 30.sp),
          boxShadow:
              widget.isShadow == true
                  ? [
                    BoxShadow(
                      color: AppColors.black000000.withOpacity(0.25),
                      spreadRadius: 0,
                      blurRadius: 10.4,
                      offset: const Offset(0, 0),
                    ),
                  ]
                  : [],
        ),
        alignment: Alignment.center,
        child: customText(
          text: widget.title,
          fontWeight: widget.fontWeight ?? FontWeight.bold,
          fontSize: widget.fontSize ?? 16.sp,
          color: widget.textColor ?? AppColors.whiteFFFFFF,
        ),
      ),
    );
  }
}
