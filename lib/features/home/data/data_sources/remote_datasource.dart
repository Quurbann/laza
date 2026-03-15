// data/datasources/product_remote_datasource.dart
import 'package:dio/dio.dart';
import '../models/product_model.dart';

abstract class ProductRemoteDataSource {
  Future<ProductModel> getProducts();
}

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  final Dio dio;

  ProductRemoteDataSourceImpl(this.dio);

  @override
  Future<ProductModel> getProducts() async {
    final response = await dio.get('/products');
    return ProductModel.fromJson(response.data);
  }
}