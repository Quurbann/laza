import 'package:flutter/material.dart';
import 'package:laza/features/cart/domain/entities/cart_items_entity.dart';
import 'package:laza/features/cart/domain/usecases/add_to_cart_usecase.dart';
import 'package:laza/features/cart/domain/usecases/remove_from_cart_usecase.dart';
import 'package:laza/features/cart/domain/usecases/get_cart_usecase.dart';

class CartProvider extends ChangeNotifier {
  final AddToCartUsecase addToCartUsecase;
  final RemoveFromCartUsecase removeFromCartUsecase;
  final GetCartUsecase getCartUsecase;

  final List<CartItemEntity> _items = [];

  CartProvider({
    required this.addToCartUsecase,
    required this.removeFromCartUsecase,
    required this.getCartUsecase,
  });

  List<CartItemEntity> get items => _items;

  int get itemCount => _items.length;

  double get totalPrice =>
      _items.fold(0, (sum, item) => sum + (item.product.price * item.quantity));

  void addToCart(CartItemEntity item) {
    addToCartUsecase.call(item);
    _items.add(item);
    notifyListeners();
  }

  void removeFromCart(CartItemEntity item) {
    removeFromCartUsecase.call(item);
    _items.remove(item);
    notifyListeners();
  }
}
