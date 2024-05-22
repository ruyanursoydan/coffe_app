import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/coffee.dart';

class CoffeeShop extends ChangeNotifier {
  // sale list
   final List<Coffee> _shop = [

    // filter coffee
    Coffee(
      name: 'Filter Coffee',
      price: "60",
      imagePath: 'lib/images/filter.png',
    ),

    // latte
    Coffee(
      name: 'Latte',
      price: "65",
      imagePath: 'lib/images/latte.png',
    ),

    //espresso
    Coffee(
      name: 'Espresso',
      price: "70",
      imagePath: 'lib/images/espresso.png',
    ),

    //turkish coffee
    Coffee(
      name: 'Turkish Coffee',
      price: "55",
      imagePath: 'lib/images/turkish.png',
    ),

   ];

  // user cart
  List<Coffee> _userCart = [];

  // get coffee list
  List<Coffee> get coffeeShop => _shop;

  // get user cart
  List<Coffee> get userCart => _userCart;

  // add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Coffee coffee){
    _userCart.remove(coffee);
    notifyListeners();
  }
}