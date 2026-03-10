// data/repositories/product_repository_impl.dart
import '../../domain/entities/products_entity.dart';
import '../../domain/repository/products_repository.dart';
import '../data_sources/remote_datasource.dart';
import '../models/product_model.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource remoteDataSource;

  ProductRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<ProductEntity>> getProducts() async {
    final model = await remoteDataSource.getProducts();
    return model.products?.map((product) => _toEntity(product)).toList() ?? [];
  }

  ProductEntity _toEntity(Products model) {
    return ProductEntity(
      id: model.id ?? 0,
      title: model.title ?? '',
      description: model.description ?? '',
      category: model.category ?? '',
      price: model.price ?? 0.0,
      discountPercentage: model.discountPercentage ?? 0.0,
      rating: model.rating ?? 0.0,
      stock: model.stock ?? 0,
      tags: model.tags ?? [],
      brand: model.brand ?? '',
      sku: model.sku ?? '',
      weight: model.weight ?? 0,
      dimensions: model.dimensions != null
          ? DimensionsEntity(
              width: model.dimensions!.width ?? 0.0,
              height: model.dimensions!.height ?? 0.0,
              depth: model.dimensions!.depth ?? 0.0,
            )
          : DimensionsEntity(width: 0.0, height: 0.0, depth: 0.0),
      warrantyInformation: model.warrantyInformation ?? '',
      shippingInformation: model.shippingInformation ?? '',
      availabilityStatus: model.availabilityStatus ?? '',
      reviews: model.reviews
              ?.map((r) => ReviewEntity(
                    rating: r.rating ?? 0,
                    comment: r.comment ?? '',
                    date: r.date ?? '',
                    reviewerName: r.reviewerName ?? '',
                    reviewerEmail: r.reviewerEmail ?? '',
                  ))
              .toList() ??
          [],
      returnPolicy: model.returnPolicy ?? '',
      minimumOrderQuantity: model.minimumOrderQuantity ?? 0,
      meta: model.meta != null
          ? MetaEntity(
              createdAt: model.meta!.createdAt ?? '',
              updatedAt: model.meta!.updatedAt ?? '',
              barcode: model.meta!.barcode ?? '',
              qrCode: model.meta!.qrCode ?? '',
            )
          : MetaEntity(createdAt: '', updatedAt: '', barcode: '', qrCode: ''),
      images: model.images ?? [],
      thumbnail: model.thumbnail ?? '',
    );
  }
}