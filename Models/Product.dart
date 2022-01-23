import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isadd;
  bool isFavorite;
  double rating;

  Product(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.imageUrl,
      this.isadd = false,
      this.isFavorite = false,
      required this.rating});
  Map<String, Product> _items = {};
  Map<String, Product> get items {
    return {..._items};
  }
  // double get ratings {
  //   var total = 0.0;
  //   _items.forEach((key, Product) {antity;
  //   });
  //     sum += Product.rating * cartitem.qu
  //   return total;
  // }

  void FavoiritStatus() {
    final oldstates = isFavorite;
    isFavorite = !isFavorite;
    notifyListeners();
    // final url = 'https://shop-app-664ca-default-rtdb.firebaseio.com/prod.json';
    // try {
    //   await http.patch(
    //     Uri.parse(url),
    //     body: json.encode({'isFavorite': isFavorite}),
    //   );
    // } catch (error) {
    //   isFavorite = oldstates;
    // }

    // isFavorite = !isFavorite;
    // notifyListeners();
  }

  void favoriteproducts() {
    final oldstates = isadd;
    isadd = !isadd;

    notifyListeners();
  }
}
