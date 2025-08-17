import 'package:chat_app_test/domain/constants/appcolors.dart';
import 'package:chat_app_test/domain/constants/utils/ui_helper.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 25,
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.darkTheme
            : AppColors.lightTheme,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
        title: UiHelper.CustomText(
          text: 'Contacts',
          fontSize: 18,
          fontFamily: "bold",
          context: context,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            UiHelper.CustomTextField(
              controller: searchController,
              text: "Search",
              textinputType: TextInputType.text,
              context: context,
              iconData: Icons.search,
            ),
          ],
        ),
      ),
    );
  }
}
