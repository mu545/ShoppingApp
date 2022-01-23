
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:kssks/Models/Product.dart';
// import 'package:kssks/Provider/Products.dart';

// import 'package:provider/provider.dart';

// class Editadd extends StatefulWidget {
//   @override
//   static const routeNamed = '/EditADD';
//   _EditaddState createState() => _EditaddState();
// }

// class _EditaddState extends State<Editadd> {
//   final _priceNode = FocusNode();
//   final _desnode = FocusNode();
//   final _ImageCon = TextEditingController();
//   final _Imagefous = FocusNode();
//   final _form = GlobalKey<FormState>();
//   var _IsInt = true;
//   var _editfor =
//       Product(id: '', title: '', price: 0, description: '', imageUrl: '', rating: 0);
//   var _Intva = {'title': '', 'price': '', 'descrption': '', 'ImageUrl': ''};

//   @override
//   void intState() {
//     _Imagefous.addListener(_update);
//     super.initState();
//   }

//   var _isLoad = false;

//   @override
//   void didChangeDependencies() {
//     if (_IsInt) {
//       final productId = ModalRoute.of(context)!.settings.arguments as String;
//       if (productId != null) {
//         _editfor =
//             Provider.of<Products>(context, listen: false).FindbyId(productId);
//         _Intva = {
//           'title': _editfor.title,
//           'price': _editfor.price.toString(),
//           'descrption': _editfor.description,
//           'ImageUrl': ''
//         };
//         _ImageCon.text = _editfor.imageUrl;
//       }
//     }
//     _IsInt = false;
//     super.didChangeDependencies();
//   }

//   void dispose() {
//     _Imagefous.removeListener(_update);
//     _priceNode.dispose();
//     _desnode.dispose();
//     _ImageCon.dispose();
//     _Imagefous.dispose();
//     super.dispose();
//   }

//   void _update() {
//     if (!_Imagefous.hasFocus) setState(() {});
//   }

//   void _Saved() {
//     final Validate = _form.currentState!.validate();
//     if (!Validate) {
//       return;
//     }
//     _form.currentState!.save();
//     if(_editfor.id != null){

//       Provider.of<Products>(context , listen: false).Update(_editfor.id, _editfor);



//     }
//     else{  Provider.of<Products>(context, listen: false).addpro(_editfor);}
// Navigator.of(context).pop();

//   }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }




// // showDialog(
//     //     context: context,
//     //     builder: (ctx) => AlertDialog(
//     //           title: Text('something wrong'),
//     //           content: Text('Error you cant add it '),
//     //           actions: <Widget>[
//     //             FlatButton(
//     //               child: Text('okay'),
//     //               onPressed: () {
//     //                 Navigator.of(ctx).pop();
//     //               },
//     //             )
//     //           ],
//     //         ));
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blueAccent,
//         title: Text('Add Product'),
//         actions: [
//           IconButton(
//             icon: Icon(
//               Icons.save,
//               color: Colors.white,
//             ),
//             color: Colors.white,
//             onPressed: () {},
//           )
//         ],
//       ),
//       body:
//            Center(
//               child: CircularProgressIndicator(),
//             )
//           : Padding(
//               padding: EdgeInsets.all(10),
//               child: Form(
//                 key: _form,
//                 child: ListView(
//                   padding: EdgeInsets.all(10),
//                   children: [
//                     TextFormField(
//                       decoration: InputDecoration(labelText: 'Title'),
//                       initialValue: _Intva['title'],
//                       textInputAction: TextInputAction.next,
//                       onFieldSubmitted: (_) {
//                         FocusScope.of(context).requestFocus(_priceNode);
//                       },
//                       onSaved: (value) {
//                         _editfor = Product(
//                           title: '',
//                           price: _editfor.price,
//                           description: _editfor.description,
//                           imageUrl: _editfor.imageUrl,
//                           id: '',
//                         );
//                       },
//                       validator: (value) {
//                         if (value!.isEmpty) {
//                           return 'Please enter a valied title';
//                         }
//                         return null;
//                       },
//                     ),
//                     TextFormField(
//                       decoration: InputDecoration(labelText: 'Price'),
//                       initialValue: _Intva['price'],
//                       textInputAction: TextInputAction.next,
//                       keyboardType: TextInputType.number,
//                       focusNode: _priceNode,
//                       onFieldSubmitted: (_) {
//                         FocusScope.of(context).requestFocus(_desnode);
//                       },
//                       onSaved: (value) {
//                         _editfor = Product(
//                           title: _editfor.title,
//                           price: double.parse(''),
//                           description: _editfor.description,
//                           imageUrl: _editfor.imageUrl,
//                           id: '',
//                         );
//                       },
//                       validator: (value) {
//                         if (value!.isEmpty) {
//                           return 'Please enter a valied price';
//                         }
//                         if (double.tryParse(value)! <= 0) {
//                           return 'Please Enter number grater than Zero';
//                         }
//                         return null;
//                       },
//                     ),
//                     TextFormField(
//                       decoration: InputDecoration(labelText: 'Descrabtion'),
//                       initialValue: _Intva['descrption'],
//                       maxLines: 3,
//                       keyboardType: TextInputType.multiline,
//                       focusNode: _desnode,
//                       onSaved: (value) {
//                         _editfor = Product(
//                           title: _editfor.title,
//                           price: _editfor.price,
//                           description: '',
//                           imageUrl: _editfor.imageUrl,
//                           id: '',
//                         );
//                       },
//                       validator: (value) {
//                         if (value!.isEmpty) {
//                           return 'Please enter a valied descraption';
//                         }
//                         return null;
//                       },
//                     ),
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         Container(
//                             width: 100,
//                             height: 100,
//                             margin: EdgeInsets.only(top: 8, right: 10),
//                             decoration: BoxDecoration(
//                                 border:
//                                     Border.all(width: 1, color: Colors.grey)),
//                             child: _ImageCon.text.isEmpty
//                                 ? Text('Enter URL')
//                                 : FittedBox(
//                                     child: Image.network(_ImageCon.text),
//                                     fit: BoxFit.cover,
//                                   )),
//                         Expanded(
//                           child: TextFormField(
//                             decoration:
//                                 InputDecoration(labelText: 'Image URL '),
//                             keyboardType: TextInputType.url,
//                             textInputAction: TextInputAction.done,
//                             controller: _ImageCon,
//                             onFieldSubmitted: (_) {},
//                             onSaved: (value) {
//                               _editfor = Product(
//                                 title: _editfor.title,
//                                 price: _editfor.price,
//                                 description: _editfor.description,
//                                 imageUrl: '',
//                                 id: '',
//                               );
//                             },
//                             validator: (value) {
//                               if (value!.isEmpty) {
//                                 return 'Please enter a valied URL ';
//                               }
//                               return null;
//                             },
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//     );
//   }

