import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kssks/Models/Cart.dart';
import 'package:kssks/Models/stripe.dart';
import 'package:kssks/Widgets/cartitem.dart';

import 'package:provider/provider.dart';

class cartscreen extends StatefulWidget {
  static const routeName = '/cart';

  @override
  State<cartscreen> createState() => _cartscreenState();
}

class _cartscreenState extends State<cartscreen> {
  @override
  // late Razorpay razorpay;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    StripeServices.init();
  }

  void payNow() async {
    //the amount must be transformed to cents
    var response =
        await StripeServices.payNowHandler(amount: '1000', currency: 'USD');
    print('response message ${response.message}');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    // razorpay.clear();
  }

  // void handlersucsss() {
  //   print("Pament success");
  //   Toast.show("Pament success", context);
  // }
  //
  // void handlererror() {
  //   print("Pament error");
  //   Toast.show("Pament error", context);
  // }
  //
  // void handelwallet() {
  //   print("External Wallet");
  //   Toast.show("External Wallet", context);
  // }

  Widget build(BuildContext context) {
    final carts = Provider.of<cart>(context);
    void openCheckout() {
      var options = {
        "key": "rzp_test_nL3EmqbgK9rG9d",
        "amount": num.parse(
              carts.total.toString(),
            ) *
            100,
        "name": "Payment",
        "description": "Pay for your product",
        "prefill": {"contact": "966", "email": "shdjsdh@gmail.com"},
        "external": {
          "wallets": ["paytm"]
        }
      };
      // try {
      //   razorpay.open(options);
      // } catch (e) {
      //   print(e.toString());
      // }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Your cart'),
      ),
      body: Column(
        children: [
          Card(
            // margin: EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.all(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Text('Total : ', style: TextStyle(fontSize: 18)),
                  // Spacer(),
                  // Chip(
                  //   label: Text('\$${carts.total}',
                  //       style: TextStyle(color: Colors.white)),
                  //   backgroundColor: Colors.blueAccent,
                  // ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  FlatButton(
                    onPressed: () {
                      payNow();
                    },
                    child: Chip(
                      label: Text('ORDER NOW',
                          style: TextStyle(color: Colors.white)),
                      backgroundColor: Colors.green
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: carts.items.length,
            itemBuilder: (ctx, ind) => cartitems(
                carts.items.values.toList()[ind].id,
                carts.items.keys.toList()[ind],
                carts.items.values.toList()[ind].title,
                carts.items.values.toList()[ind].price,
                carts.items.values.toList()[ind].quantity,
                carts.items.values.toList()[ind].image),
          ))
        ],
      ),
    );
  }
}
