import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Cart"),
        centerTitle: true,
      ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children:[
              Text("Cart Page")
            ]
          )
        )
    );
  }
}