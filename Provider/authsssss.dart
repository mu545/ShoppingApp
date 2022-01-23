// import 'dart:convert';
// import 'dart:async';

// import 'package:flutter/widgets.dart';
// import 'package:http/http.dart' as http;
// import 'package:kssks/Models/httpexe.dart';
// import 'package:shared_preferences/shared_preferences.dart';



// class Auth with ChangeNotifier {
//   late String _token;
//   late DateTime _expiryDate;
//   late String _userId;
//   late Timer _authTimer;

//   bool get isAuth {
//     return token != null;
//   }

//   String get userId {
//     return _userId;
//   }

//   String? get token {
//     if (_expiryDate != null &&
//         _expiryDate.isAfter(DateTime.now()) &&
//         _token != null) {
//       return _token;
//     }
//     return null;
//   }

//   Future<void> _authenticate(
//       String email, String password, String urlSegment) async {
//     final url =
//         'https://www.googleapis.com/identitytoolkit/v3/relyingparty/$urlSegment?key=AIzaSyDrG4sd-Heabld4nQiKYzTer_reT0uS0Hw';
//     try {
//       final response = await http.post(
//         url,
//         body: json.encode(
//           {
//             'email': email,
//             'password': password,
//             'returnSecureToken': true,
//           },
//         ),
//       );
//       print(json.decode(response.body));
//       if (json.decode(response.body)['error'] != null) {
//         throw httpexeption(json.decode(response.body)['error']['message']);
//       }
//       _token = json.decode(response.body)['idToken'];
//       _userId = json.decode(response.body)['localId'];
//       _expiryDate = DateTime.now().add(
//         Duration(
//           seconds: int.parse(
//             json.decode(response.body)['expiresIn'],
//           ),
//         ),
//       );
//       _autoLogout();
//       notifyListeners();
//       final prefs = await SharedPreferences.getInstance();
//       final userData = json.encode({
//         'token': _token,
//         'userId': _userId,
//         'expiryDate': _expiryDate.toIso8601String(),
//       });
//       prefs.setString('userData', userData);
//     } catch (error) {
//       throw error;
//     }
//   }

//   Future<void> signup(String email, String password) async {
//     return _authenticate(email, password, 'signupNewUser');
//   }

//   Future<void> login(String email, String password) async {
//     return _authenticate(email, password, 'verifyPassword');
//   }

//   Future<bool> tryAutoLogin() async {
//     final prefs = await SharedPreferences.getInstance();
//     if (!prefs.containsKey('userData')) {
//       return false;
//     }
//     final extractedUserData = json.decode(prefs.getString('userData')) as Map<String, Object>;
//     final expiryDate = DateTime.parse(extractedUserData['expiryDate']);

//     if (expiryDate.isBefore(DateTime.now())) {
//       return false;
//     }
//     _token = extractedUserData['token'];
//     _userId = extractedUserData['userId'];
//     _expiryDate = expiryDate;
//     notifyListeners();
//     _autoLogout();
//     return true;
//   }

//   Future<void> logout() async {
//     _token = null;
//     _userId = null;
//     _expiryDate = null;
//     if (_authTimer != null) {
//       _authTimer.cancel();
//       _authTimer = null;
//     }
//     notifyListeners();
//     final prefs = await SharedPreferences.getInstance();
//     // prefs.remove('userData');
//     prefs.clear();
//   }

//   void _autoLogout() {
//     if (_authTimer != null) {
//       _authTimer.cancel();
//     }
//     final timeToExpiry = _expiryDate.difference(DateTime.now()).inSeconds;
//     Timer(Duration(seconds: timeToExpiry), logout);
//   }
// }
