import 'package:flutter/material.dart';

class Es extends StatefulWidget {
  const Es({ Key? key }) : super(key: key);

  @override
  _EsState createState() => _EsState();
}

class _EsState extends State<Es> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

  appBar: AppBar(title: Center(child: Text('Youtube' , style: TextStyle(color: Colors.black), )),

 backgroundColor: Colors.white, shadowColor: Colors.white),
      
    );
  }
}