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
    productList.add(Product("Apple", "\$ 34.00", "Gala Apple","Royal Gala apple is dense, sweet, aromatic and juicy. Its flesh is white and creamy with a sweet taste but not too stressed because it also has a touch of acidity. It is one of the most common apple varieties in our market.","assets/images/appletrans.png"));
    productList.add(Product("Orange", "\$ 5.25","Red Orange ", "An orange is a fruit of various citrus species in the family Rutaceae; it primarily refers to Citrus × sinensis, which is also called sweet orange, to distinguish it from the related Citrus × aurantium, referred to as bitter orange.","assets/images/grapefruittans.png"));
    productList.add(Product("Kiwi", "\$ 4.10","Furry Brownish ", "Kiwi also called kiwifruit or Chinese gooseberry, woody vine and edible fruit of the family Actinidiaceae. The plant is native to mainland China and Taiwan and is also grown commercially in New Zealand and California. The fruit has a slightly acid taste and can be eaten raw or cooked.","assets/images/kiwi.png"));
    productList.add(Product("Mango", "\$ 20.00", "Kesar Mango","Also known as the Queen of Mangoes, Gir Kesar Mango is characterised by its sweet taste and bright-orange colour. Gir Kesar Mango arrives late in the mango season when other mango stock is about to dry up. This popular mango variety usually comes in medium sizes and oblong shape.","assets/images/mangotrans.png"));
    productList.add(Product("Grapefruit", "\$ 5.25","Citrus Species", "The grapefruit is a subtropical citrus tree known for its relatively large, sour to semi-sweet, somewhat bitter fruit. The interior flesh is segmented and varies in color from pale yellow to dark pink. Grapefruit is a citrus hybrid originating in Barbados.","assets/images/orange.png"));
    productList.add(Product("Pineapple", "\$ 4.10","Edible fruit", "The pineapple is a tropical plant with an edible fruit; it is the most economically significant plant in the family Bromeliaceae. The pineapple is indigenous to South America, where it has been cultivated for many centuries","assets/images/pineapple.png"));
    productList.add(Product("Pomegranate", "\$ 5.25","Sweet fruits", "Pomegranates are round, red fruits. They feature a white inner flesh that's densely packed with crunchy, juicy edible seeds called arils. They may be best known for the vibrantly colored juice they're often used in, but these unique fruits have a lot more to offer.","assets/images/pomogr.png"));
    productList.add(Product("Strawberry", "\$ 2.22","Red Strawberry", "The fruit is widely appreciated for its characteristic aroma, bright red color, juicy texture, and sweetness. It is consumed in large quantities, either fresh or in such prepared foods as jam, juice, pies, ice cream, milkshakes, and chocolates. Artificial strawberry flavorings and aromas are also widely used in products such as candy, soap, lip gloss, perfume, and many others.","assets/images/strawberrytrans.png"));
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
                              Text(productList[index].shortDesc , style: TextStyle(fontSize: 20,color: Colors.black54,),),
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
