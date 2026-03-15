import 'package:flutter/material.dart';
import '../../../../core/entities/products_entity.dart';
import '../../domain/usecases/get_products_usecase.dart';

class ProductProvider extends ChangeNotifier {
  final GetProductsUseCase getProductsUseCase;

  ProductProvider(this.getProductsUseCase);

  List<ProductEntity> _products = [];
  bool _isLoading = false;
  bool _isFetched = false;
  String? _error;

  List<ProductEntity> get products => _products;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> fetchProducts() async {
    if (_isFetched) return;
    _isFetched = true;

    _isLoading = true;
    notifyListeners();

    try {
      _products = await getProductsUseCase();
      _error = null;
    } catch (e) {
      _error = e.toString();
    }

    _isLoading = false;
    notifyListeners();
  }
}