import 'package:flutter/cupertino.dart';

class cartitem {
  final String id;
  final String title;
  final int quantity;
  final double price;
  final String image;

  cartitem(
      {required this.id,
      required this.title,
      required this.quantity,
      required this.price,
      required this.image});
}

class cart with ChangeNotifier {
  Map<String, cartitem> _items = {};
  Map<String, cartitem> get items {
    return {..._items};
  }

  int get itemcoount {
    return _items.length;
  }

  double get total {
    var total = 0.0;
    _items.forEach((key, cartitem) {
      total += cartitem.price * cartitem.quantity;
    });
    return total;
  }

  int get quananaity {
    var total = 0;
    _items.forEach((key, cartitem) {
      total = cartitem.quantity + 1;
    });
    return total;
  }

  void addquanty(String productId) {
    if (_items.containsKey(productId)) {
      _items.update(
          productId,
          (exe) => cartitem(
              id: exe.id,
              title: '',
              price: 0,
              quantity: exe.quantity + 1,
              image: ''));
    } else {
      _items.putIfAbsent(
          productId,
          () => cartitem(
              id: DateTime.now().toString(),
              title: '',
              price: 0,
              quantity: 1,
              image: ''));
    }
    notifyListeners();
  }

  void additem(String productId, String title, double price, String image) {
    if (_items.containsKey(productId)) {
      _items.update(
          productId,
          (exe) => cartitem(
              id: exe.id,
              title: exe.title,
              price: exe.price,
              quantity: exe.quantity + 1,
              image: exe.image));
    } else {
      _items.putIfAbsent(
          productId,
          () => cartitem(
              id: DateTime.now().toString(),
              title: title,
              price: price,
              quantity: 1,
              image: image));
    }
    notifyListeners();
  }

  void remove(String productId) {
    _items.remove(productId);
    notifyListeners();
  }

  void removesingleitem(String productid) {
    if (!_items.containsKey(productid)) {
      return;
    } else {
      if (_items[productid]!.quantity > 1) {
        _items.update(
            productid,
            (value) => cartitem(
                id: value.id,
                title: value.title,
                price: value.price,
                quantity: value.quantity - 1,
                image: value.image));
      } else {
        _items.remove(productid);
      }
      notifyListeners();
    }
  }

  void clear() {
    _items = {};
    notifyListeners();
  }
}
