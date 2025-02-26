import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pantagora_app/constants.dart';
import 'package:pantagora_app/pages/home_page.dart';
import 'package:pantagora_app/pages/likes_page.dart';
import 'package:pantagora_app/pages/search_page.dart';
import 'package:pantagora_app/pages/profile_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;

  final List<Widget> pages = const [
    HomePage(),
    Categories(),
    SearchPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: Container(
        color: kPrimaryColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 20,
          ),
          child: GNav(
            backgroundColor: kPrimaryColor,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: const Color(0xffFFB5A2),
            gap: 8,
            padding: const EdgeInsets.all(16),
            selectedIndex: selectedIndex,
            onTabChange: (value) {
              setState(
                () {
                  selectedIndex = value;
                },
              );
            },
            tabs: const [
              GButton(
                icon: Icons.home,
                text: "الصفحة الرئيسة",
              ),
              GButton(
                icon: Icons.widgets_outlined,
                text: "المتاجر",
              ),
              GButton(
                icon: Icons.search,
                text: "بحث",
              ),
              GButton(
                icon: Icons.person,
                text: "الملف الشخصي",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
