// import 'package:flutter/material.dart';
// import 'package:onlinestore_example/Models/Product.dart';
// import 'package:provider/provider.dart';
//
// class Comparepage extends StatefulWidget {
//   const Comparepage({Key? key}) : super(key: key);
//   static const routeName = '/compareproducts';
//
//   @override
//   State<Comparepage> createState() => _ComparepageState();
// }
//
// class _ComparepageState extends State<Comparepage> {
//   @override
//   Widget build(BuildContext context) {
//     final product = Provider.of<Product>(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Compare products'),
//         backgroundColor: Colors.purple,
//       ),
//       body: Column(
//         children: [
//           Row(
//             children: [
//               Column(
//                 children: [
//                   Container(
//                     width: 150,
//                     height: 150,
//                     child: Image.network(
//                       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHXK7blN1XeDlI3w95OsY9izKq0OprSEJGRyNp4yRNkPdLVgPWi4xP5kL2Ycia6HAkZQwV3ik&usqp=CAc',
//                     ),
//                   ),
//                   Row(
//                     children: [
//                       Column(
//                         children: [],
//                       )
//                     ],
//                   )
//                 ],
//               ),
//               SizedBox(
//                 width: 30,
//               ),
//               Container(
//                 width: 60,
//                 height: 50,
//                 decoration: BoxDecoration(
//                     color: Colors.deepOrange, shape: BoxShape.circle),
//                 child: Padding(
//                   padding: const EdgeInsets.all(17),
//                   child: Text(
//                     'VS',
//                     style: TextStyle(
//                         fontSize: 17,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 width: 20,
//               ),
//               Column(
//                 children: [
//                   Container(
//                     width: 150,
//                     height: 150,
//                     child: Image.network(product.imageUrl),
//                   ),
//                 ],
//               )
//             ],
//           ),
//           // SizedBox(
//           //   height: 20,
//           // ),
//           Column(
//             children: [
//               Divider(
//                 color: Colors.grey,
//               ),
//               Container(
//                 height: 100,
//                 decoration: BoxDecoration(),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       height: 100,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(0),
//                           color: Colors.white24),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text('Price'),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Divider(
//                 color: Colors.black,
//               ),
//               Container(
//                 height: 100,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(0),
//                     color: Colors.white24),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text('Describtion'),
//                   ],
//                 ),
//               ),
//               // Divider(
//               //   color: Colors.grey,
//               // ),
//               // SizedBox(
//               //   height: 50,
//               // ),
//               Divider(
//                 color: Colors.grey,
//               ),
//               Container(
//                 height: 100,
//                 decoration: BoxDecoration(),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text('Rating'),
//                   ],
//                 ),
//               ),
//               Divider(
//                 color: Colors.grey,
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
