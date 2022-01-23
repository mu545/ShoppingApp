import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_elegant_number_button/flutter_elegant_number_button.dart';
import 'package:kssks/Models/Cart.dart';
import 'package:kssks/Models/Product.dart';

import 'package:provider/provider.dart';

class cartitems extends StatefulWidget {
  @override
  final String id;
  final String productId;
  final String title;
  final double price;
  int quantity;
  final String image;

  cartitems(this.id, this.productId, this.title, this.price, this.quantity,
      this.image);

  @override
  State<cartitems> createState() => _cartitemsState();
}

class _cartitemsState extends State<cartitems> {
  Widget build(BuildContext context) {
    final carts = Provider.of<cart>(context);
    final product = Provider.of<Product>(context);
    return Dismissible(
      key: ValueKey(widget.id),
      background: Container(
        color: Theme.of(context).errorColor,
        child: Icon(
          Icons.delete,
          color: Colors.white,
          size: 40,
        ),
        alignment: Alignment.centerRight,
        padding: EdgeInsets.all(10),
      ),
      direction: DismissDirection.endToStart,
      confirmDismiss: (direction) {
        return showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
                  title: Text('Are you sure? '),
                  content: Text('Do you want to remove this item?'),
                  actions: [
                    FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                        child: Text('No',
                            style: TextStyle(color: Colors.blueAccent))),
                    FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                        child: Text(
                          'Yes',
                          style: TextStyle(color: Colors.red),
                        ))
                  ],
                ));
      },
      onDismissed: (direaction) {
        final cartpro =
            Provider.of<cart>(context, listen: false).remove(widget.productId);
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Padding(
          padding: EdgeInsets.all(0),
          child: ListTile(
            leading: CircleAvatar(
                child: Padding(
              padding: EdgeInsets.all(0),
              child: FittedBox(
                child: Image.network(widget.image),
              ),
            )),
            title: Text(widget.title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            subtitle: Text(
              'Total: \$${widget.price * widget.quantity}',
              style: TextStyle(color: Colors.red),
            ),
            trailing: ElegantNumberButton(
              initialValue: widget.quantity,
              minValue: 1,
              maxValue: 7,

              step: 1,
              decimalPlaces: 0,
              
              onChanged: (value) {
                // get the latest value from here
                setState(() {
                  widget.quantity = value.toInt();
                });
              },
              
            ),
          ),
        ),
      ),
    );
  }
}
