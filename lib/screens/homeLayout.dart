import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';
import 'package:withmyauti/screens/mainScreen.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;

  final List<Widget> screens = [
    MainScreen(),
    SizedBox(),
    SizedBox(),
    SizedBox(),
    SizedBox(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex], // Show selected screen
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedLabelStyle: TextStyle(
          fontFamily: 'Nunito',
          fontSize: 12.sp,
          color: Colors.blueAccent,
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: 'Nunito',
          fontSize: 12.sp,
          color: Colors.white,
        ),
        backgroundColor: Colors.white,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/hom.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/consultation.svg'),
            label: 'Consultations',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/momWorld.svg'),
            label: 'Mom World',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/articles.svg'),
            label: 'Articles',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/inspire.svg'),
            label: 'Inspire',
          ),
        ],
      ),
    );
  }
}
