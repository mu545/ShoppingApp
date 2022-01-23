// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:onlinestore_example/Provider/comentsss.dart';
// import 'package:onlinestore_example/Sccren/reviewpropvider.dart';
// import 'package:provider/provider.dart';
//
// import 'package:reviews_slider/reviews_slider.dart';
//
// class Reviwes extends StatefulWidget {
//   static const routeNamed = '/reviwes';
//
//   @override
//   _ReviwesState createState() => _ReviwesState();
// }
//
// class _ReviwesState extends State<Reviwes> {
//   @override
//   var _editfor = Reviewproviser(title: '', description: '');
//   int selectedValue1 = 0;
//   void onChange1(int value) {
//     setState(() {
//       selectedValue1 = value;
//     });
//   }
//
//   final _reviewController = TextEditingController();
//   final GlobalKey<FormState> _formKey = GlobalKey();
//   Map<String, String> _authData = {
//     'reviews': '',
//   };
//
//   var _isLoading = false;
//   void _ShowDialog(String message) {
//     showDialog(
//         context: context,
//         builder: (ctx) => AlertDialog(
//               title: Text('Error'),
//               content: Text(message),
//               actions: [
//                 FlatButton(
//                     onPressed: () {
//                       Navigator.of(ctx).pop();
//                     },
//                     child: Text('OK'))
//               ],
//             ));
//   }
//
//   Future<void> _showMyDialog() async {
//     return showDialog<void>(
//       context: context,
//       barrierDismissible: false, // user must tap button!
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Review submitted'),
//           content: SingleChildScrollView(
//             child: ListBody(
//               children: <Widget>[
//                 Text('Thanks for your time!'),
//               ],
//             ),
//           ),
//           actions: <Widget>[
//             TextButton(
//               child: Text('Ok'),
//               onPressed: () {
//                 Navigator.of(context).pushNamed('/');
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   Widget build(BuildContext context) {
//     final productdata = Provider.of<Comentss>(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Reviews'),
//         backgroundColor: Colors.blueAccent,
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Padding(
//                   padding: const EdgeInsets.all(8),
//                   child: Text(
//                     'How was the product you received?',
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 Center(
//                   child: RatingBar.builder(
//                     initialRating: 0,
//                     minRating: 1,
//                     direction: Axis.horizontal,
//                     allowHalfRating: true,
//                     itemCount: 5,
//                     itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
//                     itemBuilder: (context, _) => Icon(
//                       Icons.star,
//                       color: Colors.amber,
//                     ),
//                     onRatingUpdate: (rating) {
//                       print(rating);
//                     },
//                   ),
//                 )
//               ],
//             ),
//             SizedBox(height: 20),
//             // Text(
//             //   'Add a written review',
//             //   style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//             // ),
//             // Center(
//             //   child: Container(
//             //     margin: EdgeInsets.symmetric(vertical: 10),
//             //     height: 200,
//             //     width: 400,
//             //     decoration: BoxDecoration(
//             //         boxShadow: [
//             //           BoxShadow(
//             //             spreadRadius: 1,
//             //
//             //             // changes position of shadow
//             //           ),
//             //         ],
//             //         borderRadius: BorderRadius.circular(10),
//             //         color: Colors.white),
//             //     child: Padding(
//             //       padding: EdgeInsets.all(8.0),
//             //       child: TextFormField(
//             //         key: ValueKey('reviews'),
//             //         onSaved: (value) {
//             //           _authData['reviews'] = value!;
//             //         },
//             //         validator: (val) {
//             //           if (val!.isEmpty) {
//             //             return 'Please write a descrption';
//             //           }
//             //           return null;
//             //         },
//             //         showCursor: false,
//             //         decoration: InputDecoration(
//             //             border: InputBorder.none,
//             //             hintText: 'what did you like or dislike ? '),
//             //       ),
//             //     ),
//             //   ),
//             // ),
//             // ),
//             // Divider(),
//             // Text('Add a title',
//             //     style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
//             // Container(
//             //   margin: EdgeInsets.symmetric(vertical: 10),
//             //   height: 60,
//             //   width: 400,
//             //   decoration: BoxDecoration(boxShadow: [
//             //     BoxShadow(
//             //       spreadRadius: 1,
//             //
//             //       // changes position of shadow
//             //     ),
//             //   ], borderRadius: BorderRadius.circular(10), color: Colors.white),
//             //   child: Padding(
//             //     padding: EdgeInsets.all(8.0),
//             //     child: TextFormField(
//             //       key: _formKey,
//             //       validator: (val) {
//             //         if (val.isEmpty) {
//             //           return 'Please write a title';
//             //         }
//             //         return null;
//             //       },
//             //       controller: _reviewController,
//             //       showCursor: false,
//             //       onSaved: (value) {
//             //         _authData['title'] = value;
//             //       },
//             //       decoration: InputDecoration(
//             //           border: InputBorder.none,
//             //           hintText: 'what is the most important to know ? '),
//             //     ),
//             //   ),
//             // ),
//             Divider(
//               height: 100,
//             ),
//             SizedBox(height: 10),
//             SizedBox(
//               width: 400,
//               height: 50,
//               child: RaisedButton(
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10)),
//                 color: Colors.orangeAccent,
//                 onPressed: () => _showMyDialog(),
//                 child: Text(
//                   'Submit',
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
