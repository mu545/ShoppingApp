// import 'dart:math';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';
//
// import 'card.dart';
//
// class Authscreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final devicesize = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//                 gradient: LinearGradient(colors: [
//               Color.fromRGBO(215, 117, 255, 1).withOpacity(0.5),
//               Color.fromRGBO(255, 188, 177, 1).withOpacity(0.9)
//             ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
//           ),
//           SingleChildScrollView(
//               child: Container(
//             height: devicesize.height,
//             width: devicesize.width,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Flexible(
//                     child: Container(
//                   child: Text(
//                     'My shop',
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 50,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   padding: EdgeInsets.symmetric(
//                     vertical: 10,
//                     horizontal: 80,
//                   ),
//                   transform: Matrix4.rotationZ(-8 * pi / 180),
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Colors.deepOrange),
//                 )),
//                 Flexible(
//                   child: AuthCard(),
//                 )
//               ],
//             ),
//           )),
//         ],
//       ),
//     );
//   }
// }
