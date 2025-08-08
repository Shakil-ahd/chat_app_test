import 'package:chat_app_test/domain/constants/utils/ui_helper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController phonecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            SizedBox(height: 15),
            UiHelper.CustomText(
              text: "Please confirm your country code and enter",
              fontSize: 14,
              context: context,
            ),
            SizedBox(height: 5),
            UiHelper.CustomText(
              text: "your phone number",
              fontSize: 14,
              context: context,
            ),
            SizedBox(height: 30),
            UiHelper.CustomTextField(
              controller: phonecontroller,
              text: "Phone Number",
              textinputType: TextInputType.number,
              context: context,
            ),
            SizedBox(height: 50),
            UiHelper.CustomButton(btnName: "Continue", callback: () {}),
          ],
        ),
      ),
    );
  }
}
