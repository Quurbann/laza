// domain/repositories/product_repository.dart
import '../entities/products_entity.dart';

abstract class ProductRepository {
  Future<List<ProductEntity>> getProducts();
}