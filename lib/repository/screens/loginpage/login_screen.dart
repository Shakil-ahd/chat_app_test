import 'package:chat_app_test/domain/constants/appcolors.dart';
import 'package:chat_app_test/domain/constants/utils/ui_helper.dart';
import 'package:chat_app_test/repository/screens/otp/otp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController phonecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.darkTheme
            : AppColors.lightTheme,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(CupertinoIcons.back, size: 14),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomText(
              text: "Enter Your Phone Number",
              fontSize: 24,
              fontFamily: "bold",
              fontWeight: FontWeight.bold,
              context: context,
            ),
            const SizedBox(height: 15),
            UiHelper.CustomText(
              text: "Please confirm your country code and enter",
              fontSize: 14,
              context: context,
            ),
            const SizedBox(height: 5),
            UiHelper.CustomText(
              text: "your phone number",
              fontSize: 14,
              context: context,
            ),
            const SizedBox(height: 30),
            UiHelper.CustomTextField(
              controller: phonecontroller,
              text: "Phone Number",
              textinputType: TextInputType.number,
              context: context,
            ),
            const SizedBox(height: 50),
            UiHelper.CustomButton(
              btnName: "Continue",
              callback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OtpScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
