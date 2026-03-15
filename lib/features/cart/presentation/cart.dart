import 'package:flutter/material.dart';
import 'package:laza/core/entities/products_entity.dart';

class Cart extends StatelessWidget {
  final List<ProductEntity>? product;

  const Cart({super.key,  this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cart', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),), centerTitle: true,),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
