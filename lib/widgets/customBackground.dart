import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  final Widget child;

  const CustomBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/back.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
