import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:withmyauti/constants/app_colors.dart';

void showLoaderDialog(BuildContext context) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return WillPopScope(
        onWillPop: () async => false,
        child: Center(
          child: SpinKitFadingCircle(color: AppColors.primaryColor, size: 60.0),
        ),
      );
    },
  );
}
