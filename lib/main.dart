import 'package:chat_app_test/domain/constants/cubits/themecubit.dart';
import 'package:chat_app_test/domain/constants/cubits/themestates.dart';
import 'package:chat_app_test/domain/constants/themecolors.dart';
import 'package:chat_app_test/repository/screens/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(create: (_) => ThemeCubit(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeStates>(
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Chat App',
          theme: state is LightThemeStates
              ? ThemeColors.lightTheme
              : ThemeColors.darkTheme,
           
          home: const OnboardingScreen(),
        );
      },
    );
  }
}
