// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:onlinestore_example/Provider/Products.dart';
// import 'package:onlinestore_example/Widgets/Editadd.dart';
// import 'package:onlinestore_example/Widgets/Useritems.dart';
// import 'package:provider/provider.dart';
//
// class ProductItems extends StatelessWidget {
//   static const routeNamed = '/proitems';
//   @override
//   Future<void> _refresh(BuildContext context) async {
//     await Provider.of<Products>(context, listen: false).Fetch();
//   }
//
//   Widget build(BuildContext context) {
//     final productdata = Provider.of<Products>(context);
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blueAccent,
//           title: Text('Your Products'),
//           actions: [
//             // IconButton(
//             //     icon: Icon(Icons.add),
//             //     onPressed: () {
//             //       Navigator.of(context).pushNamed(Editadd.routeNamed);
//             //     })
//           ],
//         ),
//         body: RefreshIndicator(
//             onRefresh: () => _refresh(context),
//             child: Padding(
//               padding: EdgeInsets.all(8),
//               child: ListView.builder(
//                   itemCount: productdata.items.length,
//                   itemBuilder: (ctx, ind) => Useritemes(
//                       productdata.items[ind].id,
//                       productdata.items[ind].title,
//                       productdata.items[ind].imageUrl)),
//             )));
//   }
// }
