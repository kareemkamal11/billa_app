import 'package:billa_app/core/utils/app_styles.dart';
import 'package:billa_app/core/utils/app_texts.dart';
import 'package:billa_app/view/home/widgets/favorite_widget/favorite_widget.dart';
import 'package:billa_app/view_model/billa_cubit/billa_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: unused_import
import 'widgets/home_widget/home_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  late PageController pageController = PageController();

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void onItemTapped(int index) {
    pageController.jumpToPage(index);
  }

  List<Widget> bodyWidgets = const [HomeWidget(), FavoriteWidget()];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BillaCubit(),
      child: Scaffold(
        backgroundColor: AppStyles.scaffoldColor,
        body: PageView(
            controller: pageController,
            onPageChanged: onTap,
            children: bodyWidgets),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: AppTexts.home,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: AppTexts.favorite,
            ),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          onTap: onItemTapped,
        ),
        drawer: Drawer(
          child: SafeArea(
            child: Container(
              child: const Text(AppTexts.appName),
            ),
          ),
        ),
      ),
    );
  }
}
