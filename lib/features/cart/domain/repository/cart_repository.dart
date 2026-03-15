import 'package:laza/features/cart/domain/entities/cart_items_entity.dart';

abstract class CartRepository {
  void addToCart(CartItemEntity item);
  void removeFromCart(CartItemEntity item);
  List<CartItemEntity> getCartItems();
}