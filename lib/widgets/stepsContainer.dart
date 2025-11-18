import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerList extends StatefulWidget {
  final String text;
  final Color? color ;
  final Gradient? gradient;
  final Image image;
  const ContainerList({super.key,
  required this.text,
   this.color,
   this.gradient,
  required this.image});

  @override
  State<ContainerList> createState() => _ContainerListState();
}

class _ContainerListState extends State<ContainerList> {
  @override
  Widget build(BuildContext context) {
    return  Container(
width: 85.w ,
height: 107.h,
decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(13.r),
  color: widget.color,
  gradient: widget.gradient
),
child: Column(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
  widget.image,
    Text(widget.text,textAlign: TextAlign.center, style: TextStyle(
      fontSize: 11.64.sp,
      fontWeight: FontWeight.w700,
      color: Colors.white,

    ),)
  ],
),
    );
  }
}