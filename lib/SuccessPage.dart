import 'package:flutter/material.dart';
import 'package:fruits_shop/MyHomePage%20.dart';

void main() => runApp(const SuccessPage());

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Success Page"),
          centerTitle: true,
        ),
        body: const SingleChildScrollView (
          child: MySuccess(),
        ));
  }
}

class MySuccess extends StatelessWidget {
  const MySuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        Column(children: [
          SizedBox(height: 30),
        ],),
        Column(
            children:[

          Image.asset('assets/mark.png',height: 300,width: 500,),
        ]),
        Column(
            children:[
              SizedBox(height: 30),
            ]),
        const Text(
          'Congratulations!!',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'OpenSans',
            fontSize: 35.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Column(
            children:[
              SizedBox(height: 30),
            ]),
        const Text(
          'Your Order Placed Successfully!!',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'OpenSans',
            fontSize: 25.0,
            fontWeight: FontWeight.bold,

          ),
        ),
        Column(children: [
          SizedBox(height: 30),
        ],),
        Column(children: [
          ElevatedButton(

            onPressed: () {
              // Respond to button press
              Navigator.push(context,  MaterialPageRoute(builder: (context) => MyHomePage(title: 'Product List',)),);
            },

            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.fromLTRB(50, 15, 50, 15),

            ),
            child: const Text('Continue Shopping',style: TextStyle(fontSize: 20)),
          ),
        ],),
        Column(
            children:[
              SizedBox(height: 30),
            ]),
      ],
    );
  }
}