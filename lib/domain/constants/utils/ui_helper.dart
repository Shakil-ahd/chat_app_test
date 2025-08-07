import 'package:chat_app_test/domain/constants/appcolors.dart';
import 'package:flutter/material.dart';

class UiHelper {
  static CustomImage({required String imgUrl}) {
    return Image.asset("assets/images/$imgUrl");
  }

  static CustomText({
    required String text,
    required double fontSize,
    String? fontFamily,
    FontWeight? fontWeight,
    Color? color, required BuildContext context,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily ?? "regular",
        fontWeight: fontWeight ?? FontWeight.normal,
        color:
            color ??
            (Theme.of(context).brightness == Brightness.dark
                ? AppColors.textdarkTheme
                : AppColors.textlightTheme),
      ),
    );
  }

  static CustomButton({
    required String btnName,
    required VoidCallback callback,
    Color? buttoncolor,
  }) {
    return SizedBox(
      height: 52,
      width: 327,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.btnLight,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          btnName,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
