import 'package:chat_app_test/domain/constants/appcolors.dart';
import 'package:chat_app_test/repository/screens/bottomnav/chat_screen.dart';
import 'package:chat_app_test/repository/screens/bottomnav/contact_screen.dart';
import 'package:chat_app_test/repository/screens/bottomnav/more_sceen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomnavScreen extends StatefulWidget {
  const BottomnavScreen({super.key});

  @override
  State<BottomnavScreen> createState() => _BottomnavScreenState();
}

class _BottomnavScreenState extends State<BottomnavScreen> {
  int currentIndex = 0;
  List<Widget> pages = [ContactScreen(), const ChatScreen(), const MoreSceen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_2_alt),
            label: "Contact",
          ),
          const BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_fill),
            label: "Chat",
          ),
          const BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "More"),
        ],
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.navThemeDark
            : AppColors.navThemeLight,
        selectedIconTheme: IconThemeData(
          color: Theme.of(context).brightness == Brightness.dark
              ? AppColors.navIcobnDark
              : AppColors.navIconLight,
        ),
      ),
      body: IndexedStack(index: currentIndex, children: pages),
    );
  }
}
