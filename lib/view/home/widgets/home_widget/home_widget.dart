

import 'package:flutter/material.dart';

import '../custom_appbar.dart';
import 'menu_item_widget.dart';
import 'slider_images.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  CustomAppBar(),
                  SizedBox(height: 40),
                  SliderImages(),
                ],
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              sliver: MenuItemWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

