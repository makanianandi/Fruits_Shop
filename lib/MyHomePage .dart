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

    numberList.add(6);

    int firstNum = numberList[0];
    var evenNumbers = numberList.where((int i) => i.isEven);
    numberList.add(4);
    List<Product> productList = [];
    productList.add(Product("Apple", "\$ 34.00", "Gala Apple","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s","assets/images/appletrans.png"));
    productList.add(Product("Orange", "\$ 5.25","Red Orange ", "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s","assets/images/grapefruittans.png"));
    productList.add(Product("Kiwi", "\$ 4.10","Furry Brownish ", "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s","assets/images/kiwi.png"));
    productList.add(Product("Mango", "\$ 20.00", "Kesar Mango","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s","assets/images/mangotrans.png"));
    productList.add(Product("Orange", "\$ 5.25","Citrus Species", "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s","assets/images/orange.png"));
    productList.add(Product("Pineapple", "\$ 4.10","Edible fruit", "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s","assets/images/pineapple.png"));
    productList.add(Product("Pomegranate", "\$ 5.25","Sweet fruits", "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s","assets/images/pomogr.png"));
    productList.add(Product("Strawberry", "\$ 2.22","Red Strawberry", "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s","assets/images/strawberrytrans.png"));
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body:
      ListView.builder(
          padding: const EdgeInsets.all(12),
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
                    elevation:5,
                    shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white70, width: 1),
                    borderRadius: BorderRadius.circular(10)),
                    color: Colors.white,
                    child: Row(
                        children: [

                          Column(children: [
                            // Padding(padding: EdgeInsets.all(12.0)),
                            // Image.asset(productList[index].proimg,height: 100,)
                            Hero(
                            tag: productList[index].proimg,
                              child:
                              Image(
                                  width: 120,
                                  height: 120,
                                  image: AssetImage(productList[index].proimg)
                              ),
                            )
                                  ],),
                          SizedBox(width: 30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.only(
                                  left: 20,
                                  top:10,
                                  right:10,
                                  bottom: 10)),
                              Align(alignment: Alignment.topLeft,),
                              Text(productList[index].name,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.green,),),
                              Text(productList[index].shortDesc,style: TextStyle(fontSize: 20,color: Colors.black54),),
                              Text(productList[index].price,style: TextStyle(fontSize: 20,),),
                            ],
                          ),
                        ],
                    )
                )
            );
          }
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
