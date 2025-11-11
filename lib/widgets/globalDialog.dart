import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:withmyauti/config/utils.dart';
import 'package:withmyauti/constants/app_colors.dart';

class GlobalDialog extends StatelessWidget {
  final String message;
  final String? title;
  final String closeButtonText;
  final VoidCallback? onClose;

  const GlobalDialog({
    Key? key,
    this.title,
    this.message = "",
    this.closeButtonText = "Close",
    this.onClose,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      content: Column(
        children: [
          if (title != null)
            Text(
              title!,
              style: TextStyle(
                fontSize: 18.sp,
                fontFamily: 'Satoshi',
                fontWeight: FontWeight.w500,
                color: AppColors.primaryColor,
              ),
            ),
          size10h,
          if (message == "")
            SizedBox()
          else
            Text(
              message.tr,
              style: TextStyle(
                fontSize: 16.sp,
                fontFamily: 'Satoshi',
                color: AppColors.black000000,
              ),
            ),
        ],
      ),
      actions: [
        CupertinoDialogAction(
          onPressed:
              onClose ??
              () {
                Get.back();
              },
          child: Text(
            closeButtonText.tr,
            style: TextStyle(
              fontSize: 16.sp,
              fontFamily: 'Satoshi',
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
