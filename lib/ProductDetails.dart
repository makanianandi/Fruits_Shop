import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruits_shop/cart.dart';
import 'package:quantity_input/quantity_input.dart';
import 'Product.dart';

class ProductDetails extends StatelessWidget {

  const ProductDetails({Key? key, required this.product}) : super(key: key);

  final Product product;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Product Details"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children:[
              Column(children: [
                SizedBox(height: 10),
              ],),
              Column(children:[
                Image.asset(product.proimg,height: 300,width: 500,),
              ]),
              Column(children: [
                SizedBox(height: 10),
              ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(product.name,style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.black,),textAlign: TextAlign.start,),
                Text(product.price,style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.green,),textAlign: TextAlign.start,),
              ],),
              Column(children: [
                SizedBox(height: 30),
              ],),
              Column(children: [
                Text(product.description,style: TextStyle(fontSize: 20,height: 1.7),),
              ],),
              Column(children: [
                SizedBox(height: 40),
              ],),
              Column(children: [
                ElevatedButton(
                  onPressed: () {
                    // Respond to button press
                    Navigator.push(context,  MaterialPageRoute(builder: (context) => Cart()),);
                  },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(50, 15, 50, 15)
                  ),
                  child: Text('ADD TO CART',style: TextStyle(fontSize: 20)),
                ),
              ],)
            ],
          )
        )
        )
    );
  }
}