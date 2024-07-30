import 'package:billa_app/core/utils/app_styles.dart';
import 'package:billa_app/core/utils/app_widgets.dart';
import 'package:billa_app/model/menu_data.dart';
import 'package:billa_app/view_model/billa_cubit/billa_cubit.dart';
import 'package:billa_app/view_model/billa_cubit/billa_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MenuItemWidget extends StatelessWidget {
  const MenuItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BillaCubit, BillaState>(
      builder: (context, state) {
        return SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: .9,
          ),
          delegate: SliverChildBuilderDelegate(
            (context, index) => Container(
              height: 245,
              decoration: AppWidgets.decration,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {
                        context
                            .read<BillaCubit>()
                            .favoriteButton(listMenu[index]);
                      },
                      icon: listMenu[index].isFavorite
                          ? const Icon(Icons.favorite, color: Colors.red)
                          : const Icon(Icons.favorite_border),
                    ),
                  ),
                  Image.asset(
                    listMenu[index].image,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    listMenu[index].title,
                    style: AppStyles.menuTitle,
                  ),
                  Text(
                    '${listMenu[index].price} \$',
                    style: AppStyles.menuPrice,
                  ),
                ],
              ),
            ),
            childCount: listImages.length,
          ),
        );
      },
    );
  }
}

