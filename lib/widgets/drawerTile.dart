// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:iiaiapp/constants/app_colors.dart';
// import 'package:iiaiapp/constants/text_helper.dart';
// import 'package:svg_flutter/svg_flutter.dart';

// class DrawerTile extends StatelessWidget {
//   final String iconPath;
//   final String title;
//   final String? imageFormat;
//   final VoidCallback onTap;

//   const DrawerTile({
//     super.key,
//     this.imageFormat,
//     required this.iconPath,
//     required this.title,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading:
//           imageFormat == "png"
//               ? Image.asset(
//                 iconPath,
//                 color: AppColors.grey878787,
//                 height: 28.h,
//                 width: 28.w,
//               )
//               : SvgPicture.asset(iconPath),
//       title: customTextSatoshi(
//         text: title,
//         fontSize: 16.sp,
//         color: AppColors.grey808080,
//       ),
//       onTap: onTap,
//     );
//   }
// }
