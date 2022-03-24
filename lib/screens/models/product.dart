import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;
  final int commission;

  Product({
    required this.image,
    required this.title,
    required this.price,
    required this.commission,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> demo_product = [
  Product(
    image: "assets/images/product.png",
    title: "Product Name",
    price: 165,
    bgColor: const Color(0xFFFEFBF9),
    commission: 20,
  ),
  Product(
    image: "assets/images/product.png",
    title: "Product Name",
    price: 99,
    commission: 20,
  ),
  Product(
    image: "assets/images/product.png",
    title: "Product Name",
    price: 180,
    bgColor: const Color(0xFFF8FEFB),
    commission: 20,
  ),
  Product(
    image: "assets/images/product.png",
    title: "Product Name",
    price: 149,
    bgColor: const Color(0xFFEEEEED),
    commission: 20,
  ),
];
