// import 'package:flutter/material.dart';
// import 'package:kssks/Sccren/constants.dart';
// import 'package:kssks/Sccren/size_config.dart';

// class Body extends StatefulWidget {
//   @override
//   _BodyState createState() => _BodyState();
// }

// class _BodyState extends State<Body> {
//   int cureentpage = 0;
//   List<Map<String, String>> splachdata = [
//     {
//       "title": 'Welcom to TOKTOK Lets  shop ',
//       "image": 'assets/images/splash_1.png',
//     },
//     {
//       "title": 'We help people to connect with store ',
//       "image": 'assets/images/splash_2.png',
//     },
//     {
//       "title": 'We show the easy wat ro shop ',
//       "image": 'assets/images/splash_3.png',
//     }
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: SizedBox(
//       width: double.infinity,
//       child: Column(
//         children: [
//           Expanded(
//               flex: 3,
//               child: PageView.builder(
//                   onPageChanged: (value) {
//                     setState(() {
//                       cureentpage = value;
//                     });
//                   },
//                   itemCount: splachdata.length,
//                   itemBuilder: (ctx, ind) => Image.network())),
//           Expanded(
//               flex: 2,
//               child: Padding(
//                   padding: EdgeInsets.symmetric(
//                       horizontal: getProportionateScreenWidth(20)),
//                   child: Column(
//                     children: [
//                       Spacer(),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: List.generate(
//                             splachdata.length, (index) => buill(index: index)),
//                       ),
//                       Spacer(),
//                       DefaultButton(title: 'Contune', pressbuttom: () {}),
//                       Spacer()
//                     ],
//                   )))
//         ],
//       ),
//     ));
//   }

//   AnimatedContainer buill({required int index}) {
//     return AnimatedContainer(
//       duration: kAnimationDuration,
//       margin: EdgeInsets.only(right: 5),
//       height: 6,
//       width: cureentpage == index ? 20 : 6,
//       decoration: BoxDecoration(
//           color: cureentpage == index ? kPrimaryColor : Color(0xFFD8D8D8),
//           borderRadius: BorderRadius.circular(10)),
//     );
//   }
// }

// class HomeImage extends StatelessWidget {
//   const HomeImage({required this.title, required this.image});
//   final String title;
//   final String image;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Spacer(),
//         Text(
//           'TOKTOK',
//           style: TextStyle(
//               fontSize: getProportionateScreenWidth(36),
//               fontWeight: FontWeight.bold,
//               color: kPrimaryColor),
//         ),
//         Text(title),
//         Spacer(
//           flex: 2,
//         ),
//         Image.asset(
//           image,
//           height: getProportionateScreenHeight(265),
//           width: getProportionateScreenWidth(235),
//         )
//       ],
//     );
//   }
// }

// class DefaultButton extends StatelessWidget {
//   const DefaultButton(
//       {Key? key, required this.title, required this.pressbuttom})
//       : super(key: key);
//   final String title;
//   final Function pressbuttom;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       height: getProportionateScreenHeight(58),
//       child: FlatButton(
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//           color: kPrimaryColor,
//           onPressed: () {},
//           child: Text(
//             title,
//             style: TextStyle(
//                 fontSize: getProportionateScreenWidth(18), color: Colors.white),
//           )),
//     );
//   }
// }
