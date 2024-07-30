import 'package:billa_app/core/utils/app_styles.dart';
import 'package:billa_app/core/utils/app_widgets.dart';
import 'package:billa_app/model/menu_model.dart';
import 'package:billa_app/view_model/billa_cubit/billa_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemFavoriteWidget extends StatelessWidget {
  final List<MenuModel> favorites;

  const ItemFavoriteWidget({super.key, required this.favorites});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: favorites.length,
      itemBuilder: (context, index) {
        final fav = favorites[index];
        return Dismissible(
          key: UniqueKey(),
          onDismissed: (direction) {
            context.read<BillaCubit>().removFavorite(fav);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              height: 100,
              clipBehavior: Clip.antiAlias,
              decoration:
                  AppWidgets.decration, // تأكد من وجود هذا التصميم في مشروعك
              child: Center(
                child: ListTile(
                  leading: Image.asset(fav.image, width: 100),
                  title: Text(fav.title, style: AppStyles.menuTitle),
                  subtitle: Text('${fav.price} \$', style: AppStyles.menuPrice),
                  trailing: IconButton(
                    icon: const Icon(Icons.favorite, color: Colors.red),
                    onPressed: () {
                      context.read<BillaCubit>().removFavorite(fav);
                    },
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
