import 'package:chat_app_test/domain/constants/cubits/themecubit.dart';
import 'package:chat_app_test/domain/constants/utils/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( actions: [
          IconButton(
            onPressed: () {
              BlocProvider.of<ThemeCubit>(context).toggletheme();
            },
            icon: Icon(Icons.dark_mode_outlined),
          ),
        ],
),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(imgUrl: "onboarding.png"),
            SizedBox(height: 20),
            UiHelper.CustomText(
              text: "Connect easily with",
              fontSize: 24,
              fontFamily: "bold",
              fontWeight: FontWeight.bold,context:context,
            ),
            UiHelper.CustomText(
              text: "your family and friends",
              fontSize: 24,
              fontFamily: "bold",
              fontWeight: FontWeight.bold,context:context,
            ),
            UiHelper.CustomText(
              text: "over countries",
              fontSize: 24,
              fontFamily: "bold",
              fontWeight: FontWeight.bold,context:context,
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
        btnName: "Start Messaging",
        callback: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
