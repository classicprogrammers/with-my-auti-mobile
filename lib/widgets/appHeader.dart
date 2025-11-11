// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:iiaiapp/config/utils.dart';
// import 'package:iiaiapp/constants/app_colors.dart';
// import 'package:iiaiapp/constants/text_helper.dart';

// class AppHeader extends StatelessWidget {
//   const AppHeader({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             customTextSatoshi(
//               text: "Morning, ",
//               fontSize: 24.sp,
//               color: AppColors.grey929398,
//               fontWeight: FontWeight.w400,
//             ),
//             customTextSatoshi(
//               text: "Alex ",
//               fontSize: 24.sp,
//               color: AppColors.primaryColor,
//               fontWeight: FontWeight.bold,
//             ),
//             customTextSatoshi(text: "👋", fontSize: 24.sp),
//           ],
//         ),
//         size5h,
//         Container(
//           height: 25.h,
//           padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 3),
//           decoration: BoxDecoration(
//             color: AppColors.primaryColor,
//             borderRadius: BorderRadius.circular(30),
//           ),
//           child: Row(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               CircleAvatar(radius: 3, backgroundColor: Colors.greenAccent),
//               size5w,
//               customTextSatoshi(
//                 text: "Device, ",
//                 fontSize: 12.sp,
//                 fontWeight: FontWeight.w400,
//                 color: Colors.white,
//               ),
//               customTextSatoshi(
//                 text: "Connected!",
//                 fontSize: 12.sp,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
