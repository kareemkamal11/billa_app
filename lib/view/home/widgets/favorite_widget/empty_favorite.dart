import 'package:billa_app/core/utils/app_styles.dart';
import 'package:billa_app/core/utils/app_texts.dart';
import 'package:flutter/material.dart';

class EmptyFavorite extends StatelessWidget {
  const EmptyFavorite({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 300),
        child: Text(
          AppTexts.emptyFavorite,
          textAlign: TextAlign.center,
          style: AppStyles.emptyFavorite,
        ),
      );
  }
}

