import 'package:laza/features/cart/domain/entities/cart_items_entity.dart';
import 'package:laza/features/cart/domain/repository/cart_repository.dart';

class CartRepositoryImpl implements CartRepository {
  final List<CartItemEntity> _items = [];

  @override
  void addToCart(CartItemEntity item) {
    _items.add(item);
  }

  @override
  void removeFromCart(CartItemEntity item) {
    _items.remove(item);
  }

  @override
  List<CartItemEntity> getCartItems() => _items;
}