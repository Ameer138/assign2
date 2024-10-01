// lib/screens/product_detail_screen.dart
import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(product.imageUrl, height: 200, width: double.infinity, fit: BoxFit.fitHeight),            SizedBox(height: 20),
            Text(
              product.title,  // Product title
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(product.description),  // Product description
            SizedBox(height: 20),
            Text(
              'PKR ${product.price.toStringAsFixed(2)}',  // Show price in PKR
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
