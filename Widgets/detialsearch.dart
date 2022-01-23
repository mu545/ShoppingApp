// import 'package:flutter/material.dart';
// import 'package:onlinestore_example/Provider/Products.dart';
// import 'package:provider/provider.dart';
//
// class Detalsearch extends StatefulWidget {
//   const Detalsearch({Key? key}) : super(key: key);
//   static const routeName = '/detaiolseach';
//   @override
//   _DetalsearchState createState() => _DetalsearchState();
// }
//
// class _DetalsearchState extends State<Detalsearch> {
//   @override
//   Widget build(BuildContext context) {
//     // final productid = ModalRoute.of(context)!.settings.arguments as String;
//     // final lodedproductr = Provider.of<Products>(context).FindbyId(productid);
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blueAccent,
//           title: Text('Jaket'),
//         ),
//         body: SingleChildScrollView(
//           child: Column(children: [
//             Container(
//               height: 300,
//               width: double.infinity,
//               child: Image.network(
//                 'https://www.dhresource.com/0x0/f2/albu/g9/M00/F9/31/rBVaVVwJAZeARtiaAAS1M5kuVxQ585.jpg/leather-jaket-men-new-fashion-fake-two-pieces.jpg',
//                 fit: BoxFit.cover,
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Text(
//               'price: \$${49.99}',
//               style: TextStyle(
//                   fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Text(
//               'Mens Fur & Faux Leather Jaket Men Fashion Fake Two Pieces Knitted Hooded Winter Jackets Mens Casual High Quality Motorcycle Coat',
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
//               softWrap: true,
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Divider(),
//             // Container(
//             //   height: 46,
//             //   margin: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
//             //   padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
//             //   decoration: BoxDecoration(
//             //       boxShadow: [
//             //         BoxShadow(
//             //           spreadRadius: 0,
//             //
//             //           // changes position of shadow
//             //         ),
//             //       ],
//             //       borderRadius: BorderRadius.circular(20),
//             //       color: Colors.blueAccent),
//             //   child: ListTile(
//             //     onTap: () => openCheckout(),
//             //     title: Text(
//             //       'Buy Now',
//             //       style: TextStyle(fontSize: 18),
//             //     ),
//             //   ),
//             // ),
//             // Text(
//             //   'Customers reviews',
//             //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
//             // ),
//             // Container(
//             //   height: 46,
//             //   margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
//             //   padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
//             //   decoration: BoxDecoration(boxShadow: [
//             //     BoxShadow(
//             //       spreadRadius: 1,
//             //
//             //       // changes position of shadow
//             //     ),
//             //   ], borderRadius: BorderRadius.circular(10), color: Colors.white),
//             //   child: ListTile(
//             //     onTap: () =>
//             //         Navigator.of(context).pushNamed(Reviwes.routeNamed),
//             //     title: Text(
//             //       'Add a review',
//             //       style: TextStyle(fontSize: 19),
//             //     ),
//             //   ),
//             // ),
//             Divider(
//               color: Colors.black,
//               height: 10,
//             ),
//             // Text('Top reviews',
//             //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
//             // Divider(
//             //   color: Colors.black,
//             // ),
//             // SingleChildScrollView(
//             //   child: Container(
//             //       height: 200,
//             //       width: double.infinity,
//             //       child: ListView.builder(
//             //         padding: EdgeInsets.all(10),
//             //         itemCount: 1,
//             //         itemBuilder: (ctx, ind) => Column(
//             //           crossAxisAlignment: CrossAxisAlignment.start,
//             //           children: [
//             //             Row(
//             //               mainAxisAlignment: MainAxisAlignment.start,
//             //               children: [
//             //                 Container(
//             //                   child: IconButton(
//             //                       onPressed: () {},
//             //                       icon: Icon(
//             //                         Icons.person,
//             //                         color: Colors.pinkAccent,
//             //                       )),
//             //                 ),
//             //                 // Text(reviewdata.title,
//             //                 //     style: TextStyle(
//             //                 //         fontWeight: FontWeight.bold, fontSize: 15)),
//             //                 Padding(
//             //                   padding: EdgeInsets.all(8.0),
//             //                   child: Icon(
//             //                     Icons.star,
//             //                     color: Colors.amber,
//             //                   ),
//             //                 ),
//             //               ],
//             //             ),
//             //             Text(reviewdata.description,
//             //                 style: TextStyle(fontSize: 15)),
//             //             Divider(
//             //               color: Colors.black,
//             //             ),
//             //             Row(
//             //               mainAxisAlignment: MainAxisAlignment.start,
//             //               children: [
//             //                 Container(
//             //                   child: IconButton(
//             //                       onPressed: () {},
//             //                       icon: Icon(
//             //                         Icons.person,
//             //                         color: Colors.pinkAccent,
//             //                       )),
//             //                 ),
//             //                 Text('Ali',
//             //                     style: TextStyle(
//             //                         fontWeight: FontWeight.bold, fontSize: 15)),
//             //                 Padding(
//             //                   padding: EdgeInsets.all(3),
//             //                   child: Icon(
//             //                     Icons.star,
//             //                     color: Colors.amber,
//             //                   ),
//             //                 ),
//             //                 Icon(
//             //                   Icons.star,
//             //                   color: Colors.amber,
//             //                 ),
//             //                 Icon(
//             //                   Icons.star,
//             //                   color: Colors.amber,
//             //                 ),
//             //                 Icon(
//             //                   Icons.star,
//             //                   color: Colors.amber,
//             //                 ),
//             //               ],
//             //             ),
//             //             Text('It is very nice , I like it! ',
//             //                 style: TextStyle(fontSize: 15))
//             //           ],
//             //         ),
//             //       )),
//             // ),
//           ]),
//         ));
//   }
// }
