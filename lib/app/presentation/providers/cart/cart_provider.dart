import 'package:edziban/app/domain/entities/cart/cart_item.dart';
import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {
  Map<String, CartItem> _items;

  Map<String, CartItem> get items {
    return {..._items};
  }

  void addCartItem({String productId, String name, double price}) {
    if (_items.containsKey(productId)) {
      // change quantity
      _items.update(
          productId,
          (value) => CartItem(
                id: value.id,
                name: value.name,
                price: value.price,
                quantity: value.quantity + 1,
              ));
    } else {
      // add new cart item
      _items.putIfAbsent(
          productId,
          () => CartItem(
                id: DateTime.now().toString(),
                name: name,
                price: price,
                quantity: 1,
              ));
    }
  }
}
