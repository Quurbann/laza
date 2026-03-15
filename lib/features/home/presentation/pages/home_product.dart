import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laza/core/Theme/colors.dart';
import 'package:laza/core/widgets/buttons/pr%C4%B1mary_button/primary_button.dart';
import 'package:laza/core/entities/products_entity.dart';
import 'package:laza/features/cart/domain/entities/cart_items_entity.dart';
import 'package:laza/features/cart/presentation/provider/cart_provider.dart';
import 'package:laza/features/home/presentation/widgets/size_guide.dart';
import 'package:provider/provider.dart';

class HomeProduct extends StatelessWidget {
  final ProductEntity productInfo;
  const HomeProduct({super.key, required this.productInfo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surfaceLight,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Positioned(
                    child: Center(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.36,
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.04,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.surfaceDark4,
                        ),
                        child: Image.network(
                          productInfo.thumbnail,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: AppColors.white,
                          ),
                          child: IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: const Icon(
                              Icons.arrow_back,
                              color: AppColors.dark,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: AppColors.white,
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              'assets/images/svg/home/bottom_nav/basket.svg',
                              colorFilter: ColorFilter.mode(
                                AppColors.dark,
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(color: AppColors.white),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Product Name',
                            style: Theme.of(context).textTheme.bodyMedium!
                                .copyWith(
                                  color: AppColors.muted,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                ),
                          ),
                          Text(
                            'Price',
                            style: Theme.of(context).textTheme.bodyMedium!
                                .copyWith(
                                  color: AppColors.muted,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: .start,
                        children: [
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.5,
                            child: Text(
                              productInfo.title,
                              style: Theme.of(context).textTheme.bodyMedium!
                                  .copyWith(
                                    color: AppColors.dark,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                  ),
                            ),
                          ),
                          Text(
                            '\$${productInfo.price}',
                            style: Theme.of(context).textTheme.bodyMedium!
                                .copyWith(
                                  color: AppColors.dark,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.2,
                            child: Image.network(productInfo.thumbnail),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.2,
                            child: Image.network(productInfo.thumbnail),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.2,
                            child: Image.network(productInfo.thumbnail),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.2,
                            child: Image.network(productInfo.thumbnail),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Size',
                            style: Theme.of(context).textTheme.bodyMedium!
                                .copyWith(
                                  color: AppColors.dark,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                ),
                          ),
                          Text(
                            'Size Guide',
                            style: Theme.of(context).textTheme.bodyMedium!
                                .copyWith(
                                  color: AppColors.muted,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizeGuide(size: 's'),
                          SizeGuide(size: 'm'),
                          SizeGuide(size: 'l'),
                          SizeGuide(size: 'xl'),
                          SizeGuide(size: '2xl'),
                        ],
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Product Description',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColors.dark,
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        productInfo.description,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColors.muted,
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Reviews',
                            style: Theme.of(context).textTheme.bodyMedium!
                                .copyWith(
                                  color: AppColors.dark,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17,
                                ),
                          ),
                          Text(
                            'View All',
                            style: Theme.of(context).textTheme.bodyMedium!
                                .copyWith(
                                  color: AppColors.muted,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Column(
                        children: [
                          Text(
                            'There is no review for this product yet',
                            style: TextStyle(
                              fontSize: 13,
                              color: AppColors.muted,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total Price',
                                style: Theme.of(context).textTheme.bodyMedium!
                                    .copyWith(
                                      color: AppColors.dark,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                    ),
                              ),
                              Text(
                                'with VAT, SD',
                                style: Theme.of(context).textTheme.bodyMedium!
                                    .copyWith(
                                      color: AppColors.muted,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13,
                                    ),
                              ),
                            ],
                          ),
                          Text(
                            '\$${productInfo.price}',
                            style: Theme.of(context).textTheme.bodyMedium!
                                .copyWith(
                                  color: AppColors.dark,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: PrimaryButton(
        text: 'Add to Cart',
        onTap: () {
          context.read<CartProvider>().addToCart(
            CartItemEntity(product: productInfo, quantity: 1),
          );
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('${productInfo.title} sepete eklendi'),
            ),
          );
        },
      ),
    );
  }
}
