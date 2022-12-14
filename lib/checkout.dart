import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruits_shop/SuccessPage.dart';

void main() => runApp(Checkout());

class Checkout extends StatelessWidget {
  Checkout({super.key});
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkout Page"),
        centerTitle: true,
        ),
        body: const SingleChildScrollView (
          child: MyCustomForm(),
      ));
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({super.key});

  @override
  Widget build(BuildContext context) {


    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(

            children:[
              SizedBox(height: 20),
            ]),
        const Text(
          'Personal Details',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'OpenSans',
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 25),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Full Name',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
          child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter Email ID',
            ),
            keyboardType: TextInputType.emailAddress,
            inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 25, bottom: 25),
          child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter Phone Number',),
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
        ),
        const Text(
          'Address Details',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'OpenSans',
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 25),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Street Name',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
          child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter Flat/Suit/Apt No.',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 25, bottom: 25),
          child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter City',
            ),
          ),
        ),
        const Text(
          'Payment Info.',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'OpenSans',
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 25),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Card Number',
            ),
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
          child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Expiry Date (i.e MM/YY)',
            ),
            keyboardType: TextInputType.datetime,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 25, bottom: 25),
          child: TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'CVV',
            ),
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
        ),
        Column(children: [
          ElevatedButton(
            onPressed: () {
              // Respond to button press
              Navigator.push(context,  MaterialPageRoute(builder: (context) => SuccessPage()),);
            },
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.fromLTRB(50, 15, 50, 15)
            ),
            child: const Text('Place Order',style: TextStyle(fontSize: 20)),
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