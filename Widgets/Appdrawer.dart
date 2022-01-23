
import 'package:flutter/material.dart';
import 'package:kssks/Sccren/auth_screen.dart';
import 'package:kssks/Widgets/signss.dart';


class AppDraers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            backgroundColor: Colors.blue,
            title: Text('Menu'),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
              leading: Icon(Icons.person),
              title: Text('Sign up'),
              onTap: () {
                // Navigator.of(context).pushNamed(Sigsa.routeName);
              }),
          Divider(color: Colors.black54),
          // ListTile(
          //     leading: Icon(Icons.album_rounded),
          //     title: Text('Compare'),
          //     onTap: () {
          //       Navigator.of(context).pushNamed(Comparepage.routeName);
          //     }),
          // Divider(color: Colors.black54),
          // ListTile(
          //     leading: Icon(Icons.payment),
          //     title: Text('Orders'),
          //     onTap: () {
          //       Navigator.of(context).pushNamed(cartscreen.routeName);
          //     }),
          // Divider(
          //   color: Colors.black54,
          // ),
          // ListTile(
          //     leading: Icon(Icons.edit),
          //     title: Text('Mange Products'),
          //     onTap: () {
          //       Navigator.of(context).pushNamed(cartscreen.routeName);
          //     }),
        
          // ListTile(
          //     leading: Icon(Icons.add_shopping_cart),
          //     title: Text('Add Products to store'),
          //     onTap: () {
          //       // Navigator.of(context).pushNamed(Editadd.routeNamed);
          //     }),
        ],
      ),
    );
  }
}
// IconButton(
// icon: Icon(Icons.add),
// onPressed: () {
// Navigator.of(context).pushNamed(Editadd.routeNamed);
// })
