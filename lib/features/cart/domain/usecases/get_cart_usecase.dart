import 'package:laza/features/cart/domain/entities/cart_items_entity.dart';
import 'package:laza/features/cart/domain/repository/cart_repository.dart';

class GetCartUsecase {
  final CartRepository repository;
  GetCartUsecase(this.repository);

  List<CartItemEntity> call() => repository.getCartItems();
}