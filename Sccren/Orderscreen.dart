// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:onlinestore_example/Models/Order.dart';
// import 'package:onlinestore_example/Widgets/Appdrawer.dart';
// import 'package:onlinestore_example/Widgets/OrderItem.dart';
// import 'package:provider/provider.dart';
//
// class Orderscreen extends StatelessWidget {
//   @override
//   static const routeNmae = '/oreders';
//   Widget build(BuildContext context) {
//     final orderdata = Provider.of<Orders>(context);
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.purple,
//         title: Text('Orders'),
//       ),
//       drawer: AppDraers(),
//       body: ListView.builder(
//           itemCount: orderdata.orders.length,
//           itemBuilder: (ctx, ind) => OrderItem(orderdata.orders[ind])),
//     );
//   }
// }
