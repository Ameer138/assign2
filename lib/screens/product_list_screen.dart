// lib/screens/product_list_screen.dart
import 'package:flutter/material.dart';
import '../models/product.dart';       // Import Product model
import '../widgets/product_tile.dart'; // Import ProductTile widget

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      title: 'Laptop',
      description: 'A high-performance laptop.',
      price: 150000.0,
      imageUrl: 'assets/images/laptop.jpg',  // Use local image path
    ),
    Product(
      title: 'Headphones',
      description: 'Noise-cancelling headphones.',
      price: 1500.0,
      imageUrl: 'assets/images/headphone.jpeg', // Placeholder for other products
    ),
    Product(
      title: 'Smartphone',
      description: 'A powerful smartphone.',
      price: 30000.0,
      imageUrl: 'assets/images/smartphone.jpeg',
    ),
    Product(
      title: 'Smartwatch',
      description: 'A stylish smartwatch.',
      price: 6000.0,
      imageUrl: 'assets/images/smartwatch.jpeg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Product List',
          style: TextStyle(color: Colors.white),  // White text color for contrast
        ),
        backgroundColor: Colors.blue,  // Set the whole AppBar background to blue
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductTile(product: products[index]);  // Use ProductTile widget for each product
        },
      ),
    );
  }
}