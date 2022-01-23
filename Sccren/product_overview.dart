import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kssks/Models/Cart.dart';
import 'package:kssks/Models/Product.dart';
import 'package:kssks/Models/badge.dart';
import 'package:kssks/Provider/Products.dart';
import 'package:kssks/Widgets/Appdrawer.dart';
import 'package:kssks/Widgets/ProductGrid.dart';
import 'package:kssks/Widgets/searchlesss.dart';
// import 'package:onlinestore_example/Models/Cart.dart';
// import 'package:onlinestore_example/Models/Product.dart';
// import 'package:onlinestore_example/Models/badge.dart';
// import 'package:onlinestore_example/Provider/Products.dart';
// import 'package:onlinestore_example/Widgets/Appdrawer.dart';
// import 'package:onlinestore_example/Widgets/ProductGrid.dart';
// import 'package:onlinestore_example/Widgets/Product_detials_overview.dart';
// import 'package:onlinestore_example/Widgets/searchjforitems.dart';
// import 'package:onlinestore_example/Widgets/searchlesss.dart';
import 'package:provider/provider.dart';
import 'package:search_page/search_page.dart';

import 'cartscreen.dart';

enum Fillter { Favorit, all }
bool _ShowOnly = false;
bool _Showpeo = false;

// var _isinit = true;
// var _isLoaded = false;

class ProductOverView extends StatefulWidget {
  static const routeName = '/productview';
  @override
  _ProductOverViewState createState() => _ProductOverViewState();
}

class _ProductOverViewState extends State<ProductOverView> {
  get key => null;

  // void initState() {
  //   super.initState();
  // }

  @override
  // void didChangeDependencies() {
  //   if (_isinit) {
  //     setState(() {
  //       _isLoaded = true;
  //     });
  //     setState(() {
  //        Provider.of<Products>(context).Fetch().then((_) {   _isLoaded = false;});
  //        _isinit =false;
  //     });
  //
  //   }
  //   super.didChangeDependencies();
  // }
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    // final productid = ModalRoute.of(context)!.settings.arguments as String;
    // final lodedproductr = Provider.of<Products>(context).FindbyId(productid);
    final productdata = Provider.of<Products>(context);
    final product = Provider.of<Product>(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Shop App'),
          actions: <Widget>[
            Searchlesss(),
            PopupMenuButton(
              onSelected: (Fillter selecvalue) {
                setState(() {
                  if (selecvalue == Fillter.Favorit) {
                    _ShowOnly = true;
                  } else {
                    _ShowOnly = false;
                  }
                });
              },
              icon: Icon(Icons.more_vert),
              itemBuilder: (_) => [
                PopupMenuItem(
                  child: Text(
                    ' Favorite List  ',
                    style: TextStyle(color: Colors.red),
                  ),
                  value: Fillter.Favorit,
                ),
                PopupMenuItem(
                  child:
                      Text('Show All ', style: TextStyle(color: Colors.blue)),
                  value: Fillter.all,
                ),
              ],
            ),
            Consumer<cart>(
              builder: (_, cart, ch) => Badge(
                child: ch as Widget,
                value: cart.itemcoount.toString(),
                color: Colors.red,
                key: key,
              ),
              child: IconButton(
                icon: Icon(Icons.shopping_cart_outlined),
                onPressed: () {
                  Navigator.of(context).pushNamed(cartscreen.routeName);
                },
              ),
            ),
          ],
        ),
        // drawer: AppDraers(),
        body: ProductGrid(_ShowOnly, _Showpeo));
  }
}
