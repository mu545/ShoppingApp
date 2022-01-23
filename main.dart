import 'package:flutter/material.dart';
import 'package:kssks/Models/Cart.dart';
import 'package:kssks/Models/Product.dart';
import 'package:kssks/Provider/Products.dart';
import 'package:kssks/Provider/auth.dart';
import 'package:kssks/Sccren/auth_screen.dart';
import 'package:kssks/Sccren/cartscreen.dart';
import 'package:kssks/Sccren/product_overview.dart';
import 'package:kssks/Widgets/Product_detials_overview.dart';
import 'package:kssks/Widgets/firstscreen.dart';
import 'package:kssks/Widgets/signss.dart';
import 'package:provider/provider.dart';



void main()  {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider.value(
            value: Products(),
          ),
          ChangeNotifierProvider.value(
            value: Product(
                id: '',
                title: '',
                price: 0,
                description: '',
                imageUrl: '',
                rating: 5),
          ),

         
          // ChangeNotifierProvider(
          //   create: (ctx) => Reviewproviser(),
          // ),
          ChangeNotifierProvider(
            create: (ctx) => cart(),
          ),
        
        ],
        child: Consumer<Products>(
            builder: (ctx, auth, _) => MaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'd',
                  home: AuthScreen(),
                  routes: {
                  
                    ProductDetails.routeName: (ctx) => ProductDetails(),
                    
                    cartscreen.routeName: (ctx) => cartscreen(),
                  
                    ProductOverView.routeName:(ctx) =>ProductOverView()
                    // Sigsa.routeName: (ctx) => Sigsa(),
                    // Editadd.routeNamed: (ctx) => Editadd(),
                    // Searchforitems.routeNamed: (ctx) => Searchforitems()
                  },
                )));
  }
}