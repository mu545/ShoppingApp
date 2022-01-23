// import 'package:flutter/material.dart';
// import 'package:onlinestore_example/Widgets/Product_detials_overview.dart';
//
// class AuthCard extends StatefulWidget {
//   @override
//   _AuthCardState createState() => _AuthCardState();
// }
//
// enum Authlog { Login, Signup }
//
// class _AuthCardState extends State<AuthCard> {
//   final GlobalKey<FormState> _formkey = GlobalKey();
//   String _email = '';
//   String _pass = '';
//   String _con = '';
//
//   Authlog _authmap = Authlog.Login;
//   Map<String, String> authdata = {'email': '', 'Password': ''};
//   var _isLogin = false;
//   final _passwordcon = TextEditingController();
//
//   // void _submit() {
//   //   final isvalied = _formkey.currentState!.validate();
//   //   FocusScope.of(context).unfocus();
//   //   if (isvalied) {
//   //     _formkey.currentState!.save();
//   //     widget.submitfn(_email.trim(), _pass.trim(), _con.trim(), context);
//   //   }
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     final devicesize = MediaQuery.of(context).size;
//     return Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//       child: Container(
//         height: _authmap == Authlog.Signup ? 320 : 260,
//         width: devicesize.width * 0.75,
//         child: Form(
//           child: SingleChildScrollView(
//             padding: EdgeInsets.all(20),
//             child: Column(
//               children: [
//                 TextFormField(
//                   key: _formkey,
//                   decoration: InputDecoration(labelText: 'Email'),
//                   keyboardType: TextInputType.emailAddress,
//                   validator: (val) {
//                     if (val!.isEmpty || !val.contains('@')) {
//                       return 'Invalid email';
//                     }
//                     return null;
//                   },
//                   onSaved: (val) {
//                     authdata['email'] = val!;
//                   },
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(labelText: 'Password'),
//                   controller: _passwordcon,
//                   obscureText: true,
//                   validator: (val) {
//                     if (val!.isEmpty || val!.length < 6) {
//                       return 'Invalid password';
//                     }
//                     return null;
//                   },
//                   onSaved: (val) {
//                     authdata['password'] = val!;
//                   },
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(labelText: 'Confirm Password'),
//                   obscureText: true,
//                   validator: (val) {
//                     if (val != _passwordcon.text) {
//                       return 'Password do not match!';
//                     }
//                     return null;
//                   },
//                 ),
//                 RaisedButton(
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(50)),
//                   color: Colors.blueGrey,
//                   onPressed: () => ProductDetails(),
//                   child: Text(
//                     'Signup',
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
