import '../../../../core/entities/products_entity.dart';
import '../repository/products_repository.dart';

class GetProductsUseCase {
  final ProductRepository repository;

  GetProductsUseCase(this.repository);

  Future<List<ProductEntity>> call() => repository.getProducts();
}