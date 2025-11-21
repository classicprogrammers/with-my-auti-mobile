import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:withmyauti/config/utils.dart';
import 'package:withmyauti/constants/text_helper.dart';
import 'package:withmyauti/models/smartSuggestionsModel.dart';

class Smartsuggestioncard extends StatefulWidget {
  final SmartSuggestion suggestion;
  const Smartsuggestioncard({super.key, required this.suggestion});

  @override
  State<Smartsuggestioncard> createState() => _SmartsuggestioncardState();
}

class _SmartsuggestioncardState extends State<Smartsuggestioncard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
      width: Get.width,
      height: 87.h,
      decoration: BoxDecoration(
        color: widget.suggestion.color,
        borderRadius: BorderRadius.circular(10.r)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 48),
        child: Row(
      children: [
        Image.asset(
              widget.suggestion.imagePath,
              width: 72.w,
              height: 72.h,
                 fit: BoxFit.cover,
                
                ),
        size21w,
        Expanded(child: customText(text: widget.suggestion.suggestionText,color: Colors.white, fontSize: 15.17.sp, fontWeight: FontWeight.w700))
      ,
      size70h,
      Image.asset('assets/images/forwardIcon.png', width: 32.w, height: 32.h,),
      // SizedBox(
      //   width: 48.w,
      // )
      
      ],
        ),
      ),
      ),
    );
  }
}