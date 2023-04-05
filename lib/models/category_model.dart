import 'package:flutter/material.dart';

class CategoryModel {
  final String id;
  final String image;
  final String prodCategory;

  const CategoryModel(
      {required this.id, required this.image, required this.prodCategory});
}

class ProductModel {
  final String id;
  final String title;
  final String desc;
  final double price;
  final String image;

  const ProductModel(
      {required this.id,
      required this.title,
      required this.desc,
      required this.price,
      required this.image});
}
