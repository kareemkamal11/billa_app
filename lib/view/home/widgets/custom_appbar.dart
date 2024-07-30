import 'package:billa_app/core/utils/app_styles.dart';
import 'package:billa_app/core/utils/app_texts.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(
              Icons.menu,
              size: 30,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
          const SizedBox(width: 130),
          Text(AppTexts.appName, style: AppStyles.title),
        ],
      ),
    );
  }
}
