import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class User with ChangeNotifier {
  final String id;
  // final String title;
  // final String description;
  // final double price;
  // final String imageUrl;
  // ng;  bool isadd;
  // bool isFavorite;
  double rating;

  User({required this.id, required this.rating});
  Map<String, User> _items = {};
  Map<String, User> get items {
    return {..._items};
  }
  // double get ratings {
  //   var total = 0.0;
  //   _items.forEach((key, Product) {
  //     sum += Product.rating * cartitem.quantity;
  //   });
  //   return total;
  // }

}
