import 'package:chat_app_test/domain/constants/appcolors.dart';
import 'package:chat_app_test/domain/constants/utils/ui_helper.dart';
import 'package:chat_app_test/repository/screens/bottomnav/bottomnav_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final TextEditingController _firstnameController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();

  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UiHelper.CustomText(
          text: "My Profile",
          fontSize: 18,
          context: context,
          fontFamily: 'bold',
          color: Theme.of(context).brightness == Brightness.dark
              ? AppColors.textdarkTheme
              : AppColors.textlightTheme,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(CupertinoIcons.back, size: 14),
        ),
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.darkTheme
            : AppColors.lightTheme,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Theme.of(context).brightness == Brightness.dark
                ? UiHelper.CustomImage(imgUrl: "darkProfile.png")
                : UiHelper.CustomImage(imgUrl: "light.png"),

            const SizedBox(height: 30),
            UiHelper.CustomTextField(
              controller: _firstnameController,
              text: "First Name (Required)",
              textinputType: TextInputType.name,
              context: context,
            ),
            const SizedBox(height: 20),
            UiHelper.CustomTextField(
              controller: _lastnameController,
              text: "Last Name (Optional)",
              textinputType: TextInputType.name,
              context: context,
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
        btnName: "Save",
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const BottomnavScreen()),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
