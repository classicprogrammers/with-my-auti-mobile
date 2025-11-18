import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ForgetPasswordController extends GetxController {
  // Reactive variable to track whether phone mode is active
  var isPhoneMode = false;

  // Text controller
  final TextEditingController emailCtr = TextEditingController();
    final TextEditingController phoneCtr = TextEditingController();


  // Toggle between email and phone
  void toggleMode() {
    isPhoneMode = !isPhoneMode;
    update();
    emailCtr.clear();
    phoneCtr.clear();
  }
}
