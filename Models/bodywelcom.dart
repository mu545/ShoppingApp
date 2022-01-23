// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:onlinestore_example/Sccren/constants.dart';
// import 'package:onlinestore_example/Sccren/size_config.dart';
//
// class BodyWelcom extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: SizedBox(
//       width: double.infinity,
//       child: Padding(
//         padding:
//             EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
//         child: Column(
//           children: [
//             Text(
//               'Welcome Back',
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: getProportionateScreenWidth(28),
//                   fontWeight: FontWeight.bold),
//             ),
//             Text(
//               'Sign in with username and password \nor continue with social media ',
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(
//               height: SizeConfig.screenHeight * 0.08,
//             ),
//             SignForm(),
//             SizedBox(
//               height: SizeConfig.screenHeight * 0.08,
//             ),
//           ],
//         ),
//       ),
//     ));
//   }
// }
//
// class SignForm extends StatefulWidget {
//   @override
//   _SignFormState createState() => _SignFormState();
// }
//
// class _SignFormState extends State<SignForm> {
//   final _formkey = GlobalKey<FormState>();
//   final List<String> error = ["Demo"];
//   bool rember = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formkey,
//       child: Column(
//         children: [
//           SizedBox(
//             height: getProportionateScreenHeight(100),
//             child: TextFormField(
//               keyboardType: TextInputType.emailAddress,
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return null;
//                 } else {
//                   setState(() {
//                     error.add(kEmailNullError);
//                   });
//                 }
//               },
//               decoration: InputDecoration(
//                   labelText: 'Email',
//                   hintText: 'Enter your email',
//                   floatingLabelBehavior: FloatingLabelBehavior.always,
//                   suffixIcon: Padding(
//                     padding: EdgeInsets.fromLTRB(
//                         0,
//                         getProportionateScreenWidth(20),
//                         getProportionateScreenWidth(20),
//                         getProportionateScreenWidth(20)),
//                     child: SvgPicture.asset(
//                       'assets/icons/Mail.svg',
//                       height: getProportionateScreenWidth(15),
//                     ),
//                   ),
//                   contentPadding:
//                       EdgeInsets.symmetric(horizontal: 42, vertical: 10),
//                   enabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(28),
//                       borderSide: BorderSide(color: kTextColor),
//                       gapPadding: 10),
//                   focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(28),
//                       borderSide: BorderSide(color: kTextColor),
//                       gapPadding: 10)),
//             ),
//           ),
//           TextFormField(
//             obscureText: true,
//             decoration: InputDecoration(
//                 labelText: 'Password',
//                 hintText: 'Enter your password',
//                 floatingLabelBehavior: FloatingLabelBehavior.always,
//                 suffixIcon: Padding(
//                   padding: EdgeInsets.fromLTRB(
//                       0,
//                       getProportionateScreenWidth(20),
//                       getProportionateScreenWidth(20),
//                       getProportionateScreenWidth(20)),
//                   child: SvgPicture.asset(
//                     'assets/icons/Lock.svg',
//                     height: getProportionateScreenWidth(18),
//                   ),
//                 ),
//                 contentPadding:
//                     EdgeInsets.symmetric(horizontal: 42, vertical: 10),
//                 enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(28),
//                     borderSide: BorderSide(color: kTextColor),
//                     gapPadding: 10),
//                 focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(28),
//                     borderSide: BorderSide(color: kTextColor),
//                     gapPadding: 10)),
//           ),
//           SizedBox(
//             height: getProportionateScreenHeight(20),
//           ),
//           // Formerrorrs(
//           //   errors: error,
//           // ),
//           Row(
//             children: [
//               Checkbox(
//                   activeColor: kPrimaryColor,
//                   value: rember,
//                   onChanged: (value) {
//                     setState(() {
//                       rember = value!;
//                     });
//                   }),
//               Text('Remember me'),
//               Spacer(),
//               GestureDetector(
//                 onTap: () {},
//                 child: Text(
//                   'Forget password',
//                   style: TextStyle(decoration: TextDecoration.underline),
//                 ),
//               )
//             ],
//           ),
//
//           // Buttons(pressbuttom: () {}, title: 'Continue'),
//           SizedBox(
//             height: SizeConfig.screenHeight * 0.04,
//           ),
//
//           SizedBox(
//             height: SizeConfig.screenHeight * 0.08,
//           ),
//           // Row(
//           //   mainAxisAlignment: MainAxisAlignment.center,
//           //   children: [
//           //     socialmedia(
//           //       icons: 'assets/icons/google-icon.svg',
//           //       press: () {},
//           //     ),
//           //     socialmedia(
//           //       icons: 'assets/icons/facebook-2.svg',
//           //       press: () {},
//           //     ),
//           //     socialmedia(
//           //       icons: 'assets/icons/twitter.svg',
//           //       press: () {},
//           //     )
//           //   ],
//           // ),
//           SizedBox(
//             height: getProportionateScreenHeight(20),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 'Dont have an account? ',
//                 style: TextStyle(fontSize: getProportionateScreenWidth(16)),
//               ),
//               GestureDetector(
//                 onTap: () {},
//                 child: Text(
//                   'Sign up ',
//                   style: TextStyle(
//                       fontSize: getProportionateScreenWidth(16),
//                       color: kPrimaryColor),
//                 ),
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
//
// class socialmedia extends StatelessWidget {
//   const socialmedia({
//     required Key key,
//     required this.press,
//     required this.icons,
//   }) : super(key: key);
//   final Function press;
//   final String icons;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
//       padding: EdgeInsets.all(getProportionateScreenWidth(7)),
//       height: getProportionateScreenHeight(40),
//       width: getProportionateScreenWidth(40),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: Colors.white12,
//       ),
//       child: SvgPicture.asset(icons),
//     );
//   }
// }
//
// class Formerrorrs extends StatelessWidget {
//   Formerrorrs({
//     required Key key,
//     required this.errors,
//   }) : super(key: key);
//   final List<String> errors;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//         children: List.generate(
//             errors.length, (index) => buildRow(error: errors[index])));
//   }
//
//   Row buildRow({required String error}) {
//     return Row(
//       children: [
//         SvgPicture.asset('assets/icons/Error.svg',
//             height: getProportionateScreenWidth(14),
//             width: getProportionateScreenWidth(14)),
//       ],
//     );
//   }
// }
//
// class Buttons extends StatelessWidget {
//   const Buttons(
//       {required Key key, required this.title, required this.pressbuttom})
//       : super(key: key);
//   final String title;
//   final Function pressbuttom;
//
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
