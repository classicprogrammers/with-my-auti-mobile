import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:withmyauti/widgets/customBackground.dart';

class MyMomentsScreen extends StatefulWidget {
  const MyMomentsScreen({super.key});

  @override
  State<MyMomentsScreen> createState() => _MyMomentsScreenState();
}

class _MyMomentsScreenState extends State<MyMomentsScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/logoText.png',
                    width: 138.w,
                    height: 49.h,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
