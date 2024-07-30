import 'package:billa_app/core/utils/assets_utils.dart';
import 'package:billa_app/model/menu_model.dart';

final listImages = List.generate(
  10,
  (index) => AssetsUtils.image,
);

final List<MenuModel> listMenu = [
  MenuModel(
    image: AssetsUtils.beafBurger,
    title: 'Beaf Burger',
    price: '10.00',
    isFavorite: false,
  ),
  MenuModel(
    image: AssetsUtils.crispyZinger,
    title: 'Crispy Zinger',
    price: '15.00',
    isFavorite: false,
  ),
  MenuModel(
    image: AssetsUtils.meatShawerma,
    title: 'Meat Shawerma',
    price: '20.00',
    isFavorite: false,
  ),
  MenuModel(
    image: AssetsUtils.spicyShrimp,
    title: 'Spicy Shrimp',
    price: '25.00',
    isFavorite: false,
  ),
  MenuModel(
    image: AssetsUtils.pizza,
    title: 'Pizza',
    price: '30.00',
    isFavorite: false,
  ),
  // create the same data with different price
  MenuModel(
    image: AssetsUtils.beafBurger,
    title: 'Beaf Burger',
    price: '50.00',
    isFavorite: false,
  ),
  MenuModel(
    image: AssetsUtils.crispyZinger,
    title: 'Crispy Zinger',
    price: '55.00',
    isFavorite: false,
  ),
  MenuModel(
    image: AssetsUtils.meatShawerma,
    title: 'Meat Shawerma',
    price: '60.00',
    isFavorite: false,
  ),
  MenuModel(
    image: AssetsUtils.spicyShrimp,
    title: 'Spicy Shrimp',
    price: '65.00',
    isFavorite: false,
  ),
  MenuModel(
    image: AssetsUtils.pizza,
    title: 'Pizza',
    price: '70.00',
    isFavorite: false,
  ),
  

];
