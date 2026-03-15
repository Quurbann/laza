import 'package:laza/features/cart/domain/entities/cart_items_entity.dart';
import 'package:laza/features/cart/domain/repository/cart_repository.dart';

class AddToCartUsecase {
  final CartRepository repository;
  AddToCartUsecase(this.repository);

  void call(CartItemEntity item) => repository.addToCart(item);
}