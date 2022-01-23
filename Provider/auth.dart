// import 'dart:io';
// import 'package:firebase_auth/firebase_auth.dart';

// import 'package:flutter/material.dart';

// import 'package:firebase_auth/firebase_auth.dart';

// class AuthForm extends StatefulWidget {
//   static const routeNamed = '/authzsscrennform';
//   // final void Function(String email, String pass, bool isLogin, BuildContext ctx)
//   //     submitfn;
//   // AuthForm(this.submitfn);

//   @override
//   State<AuthForm> createState() => _AuthFormState();
// }

// class _AuthFormState extends State<AuthForm> {
//   final _formket = GlobalKey<FormState>();
//   bool _isLogin = true;
//   String _email = '';
//   String _pass = '';
//   var user = FirebaseAuth.instance.currentUser;
//   Future<void> _Submit() async {
//     final isValied = _formket.currentState!.validate();
//     FocusScope.of(context).unfocus();
//     if (isValied) {
//       _formket.currentState!.save();
//       // widget.submitfn(_email, _pass, _isLogin, context);
//       // Navigator.of(context).pushNamed('/');
//     }

//     // if (isValied) {
//     //   _formket.currentState!.save();
//     //   widget.submitfn(_email, _username, _pass, _isLogin, context);
//     //
//     //
//     // }
//   }

//   @override
//   // Map<String, String> _authData = {'email': '', 'pass': '', "username": ''};
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Regstration '),
//         backgroundColor: Colors.blueAccent,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//                 margin: EdgeInsets.symmetric(vertical: 80),
//                 child: Text(
//                   'Regstration',
//                   style: TextStyle(fontSize: 50, color: Colors.blueAccent),
//                 )),
//             Card(
//               elevation: 20,
//               margin: EdgeInsets.all(20),
//               child: SingleChildScrollView(
//                 padding: EdgeInsets.all(16),
//                 child: Form(
//                   key: _formket,
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       TextFormField(
//                         key: ValueKey('email'),
//                         validator: (val) {
//                           if (val!.isEmpty || !val!.contains('@')) {
//                             return 'please enter a valid email';
//                           }
//                         },
//                         decoration: InputDecoration(labelText: 'Enter email'),
//                         keyboardType: TextInputType.emailAddress,
//                         onSaved: (val) => _email = val!,
//                       ),
//                       // if (!_isLogin)
//                       //   TextFormField(
//                       //     key: ValueKey('username'),
//                       //     validator: (val) {
//                       //       if (val!.isEmpty || val!.length > 7) {
//                       //         return null;
//                       //       }
//                       //
//                       //       return 'please enter a username more than 7 ';
//                       //     },
//                       //     decoration:
//                       //         InputDecoration(labelText: 'Enter username'),
//                       //     onSaved: (val) => _username = val!,
//                       //   ),
//                       TextFormField(
//                         key: ValueKey('pass'),
//                         validator: (val) {
//                           if (val!.isEmpty || val!.length < 7) {
//                             return ' Please enter password more than 8 ';
//                           }
//                         },
//                         decoration:
//                             InputDecoration(labelText: 'Enter password'),
//                         onSaved: (val) => _pass = val!,
//                         obscureText: true,
//                       ),
//                       SizedBox(),
//                       Divider(),
//                       FlatButton(
//                         color: Colors.blueAccent,
//                         child: Text(
//                           _isLogin ? 'Login' : 'SignUp',
//                           style: TextStyle(color: Colors.white),
//                         ),
//                         onPressed: _Submit,
//                       ),
//                       FlatButton(
//                         onPressed: () {
//                           setState(() {
//                             _isLogin = !_isLogin;
//                           });
//                         },
//                         child: Text(_isLogin
//                             ? 'Need an account ? Sign up'
//                             : 'Already have account'),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
