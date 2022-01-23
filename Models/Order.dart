// import 'dart:convert';
//
// import 'package:flutter/cupertino.dart';
// import 'package:onlinestore_example/Models/Cart.dart';
//
// import 'package:http/http.dart' as http;
//
// class OrderItemss {
//   final String id;
//   final double amount;
//   final DateTime dateTime;
//   final List<cartitem> products;
//
//   OrderItemss(
//       {required this.id,
//       required this.amount,
//       required this.dateTime,
//       required this.products});
// }
//
// class Orders with ChangeNotifier {
//   List<OrderItemss> _orders = [];
//   List<OrderItemss> get orders {
//     return [..._orders];
//   }
//
//   Future<void> addorder(List<cartitem> cartproduct, double total) async {
//     const url = 'https://shop-app-664ca-default-rtdb.firebaseio.com/prod.json';
//     final temproredata = DateTime.now();
//     final response = await http.post(Uri.parse(url),
//         body: json.encode({
//           'amount': total,
//           'Datetime': temproredata.toIso8601String(),
//           'product': cartproduct.map((e) => {
//                 'id': e.id,
//                 'title': e.title,
//                 'quantity': e.quantity,
//                 'price': e.price
//               })
//         }));
//
//     _orders.insert(
//         0,
//         OrderItemss(
//             id: DateTime.now().toString(),
//             amount: total,
//             dateTime: DateTime.now(),
//             products: cartproduct));
//     notifyListeners();
//   }
//
//   Future<void> fetchorder() async {
//     const url = 'https://shop-app-664ca-default-rtdb.firebaseio.com/prod.json';
//     final response = await http.get(Uri.parse(url));
//     final List<OrderItemss> Loadorder = [];
//     final extractData = json.decode(response.body) as Map<String, dynamic>;
//     extractData.forEach((orderId, orderDta) {
//       Loadorder.add(OrderItemss(
//         id: orderId,
//         amount: orderDta['amount'],
//         dateTime: DateTime.parse(orderDta['datatime']),
//         products: orderDta['products'],
//       ));
//     });
//   }
//   /*  Future<void> addorderserver(OrderItemss order) async {
// const url = 'https://shop-app-664ca-default-rtdb.firebaseio.com/prod.json';
//
//  try {
//       final response = await http.post(
//         Uri.parse(url),
//         body: json.encode(
//           {
//             'id': order.id.toString() ,
//             'amount': order.amount,
//             'Datetime': order.dateTime,
//             'product': order.products,
//
//           },
//         ),
//       );
//       final neworder = OrderItemss(
//           id: json.decode(response.body)['name'],
//
//           amount: order.amount,
//           dateTime: order.dateTime,
//           products: order.products);
//      _orders.add(neworder);
//       notifyListeners();
//     } catch (error) {
//       print(error);
//       throw error;
//     }
//   }
//   Future<void> Fetchorderserver() async {
//     const url = 'https://shop-app-664ca-default-rtdb.firebaseio.com/prod.json';
//     try {
//       if (Uri.parse(url) != null) {
//         final resposns = await http.get(Uri.parse(url));
//         final extrachData = json.decode(resposns.body) as Map<String, dynamic>;
//         final List<OrderItemss> Loadeproducts = [];
//         extrachData.forEach((orderId, orderdata) {
//           Loadeproducts.add(OrderItemss(
//             id: orderId,
//             amount: orderdata['amount'],
//             dateTime: orderdata['datatime'],
//             products: orderdata['products'],
//
//           ));
//         });
//          _orders= Loadeproducts;
//         notifyListeners();
//       }
//     } catch (error) {
//       throw error;
//     }
//   }
//
//
//
//
// }*/
//
// }
