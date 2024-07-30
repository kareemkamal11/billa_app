import 'package:billa_app/view_model/billa_cubit/billa_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../view_model/billa_cubit/billa_state.dart';
import '../custom_appbar.dart';
import 'empty_favorite.dart';
import 'item_favorite_widget.dart';

class FavoriteWidget extends StatelessWidget {
  const FavoriteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            const CustomAppBar(),
            const SizedBox(height: 40),
            BlocBuilder<BillaCubit, BillaState>(
              builder: (context, state) {
                final favorites = context.read<BillaCubit>().favoriteList;
                  return favorites.isEmpty
                      ? const EmptyFavorite()
                      : ItemFavoriteWidget(favorites: favorites);
              },
            ),
          ],
        ),
      ),
    );
  }
}

