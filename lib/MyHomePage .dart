import 'dart:ui';

import 'package:flutter/material.dart';
import 'Product.dart';
import 'ProductDetails.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  newPage(int index){

  }
  @override
  Widget build(BuildContext context) {

    List<int> numberList = [];

    numberList.add(3);
    numberList.add(4);
    int firstNum = numberList[0];
    var evenNumbers = numberList.where((int i) => i.isEven);
    numberList.add(4);
    List<Product> productList = [];
    productList.add(Product("Apple", 34, "Professor at Conestoga","assets/freshcartlogo.png"));
    productList.add(Product("Pomegranate", 45, "Professor at Conestoga","assets/freshcartlogo.png"));
    productList.add(Product("Pineapple", 64, "Founder of Microsoft","assets/freshcartlogo.png"));
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body:
      ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: productList.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductDetails(product: productList[index])
                      )
                  );
                },
                child: Card(
                    color: Colors.white,
                    child: Column(children: [
                      Text(productList[index].name),
                      Text(productList[index].price.toString()),
                      CircleAvatar(backgroundImage: NetworkImage("https://miro.medium.com/fit/c/64/64/1*WSdkXxKtD8m54-1xp75cqQ.jpeg"))
                    ],)
                )
            );
          }
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
