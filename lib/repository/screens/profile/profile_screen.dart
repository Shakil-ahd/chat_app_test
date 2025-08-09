import 'package:chat_app_test/domain/constants/appcolors.dart';
import 'package:chat_app_test/domain/constants/utils/ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UiHelper.CustomText(
          text: "My Profile",
          fontSize: 18,
          context: context,
          fontFamily: 'bold',
          color:Theme.of(context).brightness == Brightness.dark
              ? AppColors.textdarkTheme
              : AppColors.textlightTheme,
          
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(CupertinoIcons.back, size: 14),
        ),
      ),

      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? AppColors.darkTheme
          : AppColors.lightTheme,
    );
  }
}
