import 'package:billa_app/model/favorite_data.dart';
import 'package:billa_app/model/menu_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'billa_state.dart';

class BillaCubit extends Cubit<BillaState> {
  BillaCubit() : super(BillaInitial());

  void favoriteButton(MenuModel index) {
    if (index.isFavorite == false) {
      index.isFavorite = true;
      favoriteList.add(index);
      emit(FavotriteAdded());
    } else {
      index.isFavorite = false;
      favoriteList.remove(index);
      emit(FavotriteRemoved());
    }
  }

  final List<MenuModel> favoriteList = listFavorite;

  removFavorite(MenuModel item) {
    item.isFavorite = false;
    favoriteList.remove(item);
    emit(FavotriteRemoved());
  }

  int current = 0;

  slideChange(int index) {
    current = index;
    emit(BillSlideChange());
  }
}
