import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laza/core/api/api_service.dart';
import 'package:laza/core/theme/colors.dart';
import 'package:laza/features/cart/data/repository/cart_repository_impl.dart';
import 'package:laza/features/cart/domain/usecases/add_to_cart_usecase.dart';
import 'package:laza/features/cart/domain/usecases/get_cart_usecase.dart';
import 'package:laza/features/cart/domain/usecases/remove_from_cart_usecase.dart';
import 'package:laza/features/cart/presentation/provider/cart_provider.dart';
import 'package:laza/features/home/data/data_sources/remote_datasource.dart';
import 'package:laza/features/home/data/repository/products_repository_implementation.dart';
import 'package:laza/features/home/domain/usecases/get_products_usecase.dart';
import 'package:laza/features/home/presentation/provider/product_provider.dart';
import 'package:laza/features/initial_flow/presentation/pages/splash.dart';
import 'package:laza/features/initial_flow/presentation/provider/splash_provider.dart';
import 'package:provider/provider.dart';

class Laza extends StatelessWidget {
  const Laza({super.key});

  @override
  Widget build(BuildContext context) {
    final dio = DioClient.instance;
    final dataSource = ProductRemoteDataSourceImpl(dio);
    final repository = ProductRepositoryImpl(dataSource);
    final useCase = GetProductsUseCase(repository);

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SplashProvider()..initialize()),
        ChangeNotifierProvider(create: (_) => ProductProvider(useCase)),
        ChangeNotifierProvider(
          create: (_) {
            final repo = CartRepositoryImpl();
            return CartProvider(
              addToCartUsecase: AddToCartUsecase(repo),
              removeFromCartUsecase: RemoveFromCartUsecase(repo),
              getCartUsecase: GetCartUsecase(repo),
            );
          },
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.interTextTheme(),
          scaffoldBackgroundColor: AppColors.white,
          appBarTheme: AppBarTheme(
            backgroundColor: AppColors.white,
            elevation: 0,
            scrolledUnderElevation: 0,
          ),
        ),
        home: const Splash(),
      ),
    );
  }
}
