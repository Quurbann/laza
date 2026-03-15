import 'package:laza/features/cart/domain/entities/cart_items_entity.dart';
import 'package:laza/features/cart/domain/repository/cart_repository.dart';

class RemoveFromCartUsecase {
  final CartRepository repository;
  RemoveFromCartUsecase(this.repository);

  void call(CartItemEntity item) => repository.removeFromCart(item);
}