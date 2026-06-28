import 'package:first_project/features/home/homepage.dart';
import 'package:first_project/features/profile/profile.dart';
import 'package:first_project/features/setting/settings.dart';
import 'package:first_project/features/shop/shop.dart';
import 'package:flutter/material.dart';

// 1. غيرنا اسم الكلاس هنا علشان ميتعارضش مع الـ PageController بتاع فلاتر
class MainScreenController extends StatefulWidget {
  const MainScreenController({super.key});

  @override
  State<MainScreenController> createState() => _MainScreenControllerState();
}

class _MainScreenControllerState extends State<MainScreenController> {
  // 2. هنا فلاتر هيعرف يقرا الـ PageController الصح الخاص بالـ PageView
  final PageController _pageController = PageController();
  int currentIndex = 0;

  @override
  void dispose() {
    _pageController
        .dispose(); // من الأفضل دايماً تقفلي الـ controller لما الشاشة تقفل
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        children: [HomePage(), Shop(), Profile(), Settings()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        onTap: (index) {
          _pageController.jumpToPage(index);
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Shop",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
