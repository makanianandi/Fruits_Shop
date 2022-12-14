import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruits_shop/SuccessPage.dart';

void main() => runApp(Checkout());

class Checkout extends StatelessWidget {
  Checkout({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkout Page"),
        centerTitle: true,
        ),
        body: SingleChildScrollView (
          child: MyCustomForm(),
      ));
  }
}

class MyCustomForm extends StatelessWidget {
  MyCustomForm({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    // return Column(
    //   key: _formKey,
    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   children: <Widget>[
    //     Column(
    //         children:[
    //           SizedBox(height: 20),
    //         ]),
    //     const Text(
    //       'Personal Details',
    //       style: TextStyle(
    //         color: Colors.black,
    //         fontFamily: 'OpenSans',
    //         fontSize: 25.0,
    //         fontWeight: FontWeight.bold,
    //       ),
    //     ),
    //     Padding(
    //       padding: EdgeInsets.only(left: 20, right: 20, top: 25),
    //       child: TextFormField(
    //         decoration: InputDecoration(
    //           border: OutlineInputBorder(),
    //           hintText: 'Enter Full Name',
    //         ),
    //         validator: (value) {
    //         if (value == null || value.isEmpty) {
    //         return 'Please enter some text';
    //         }
    //         return null;
    //         },
    //        ),
    //       ),
    //     Padding(
    //       padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
    //       child: TextFormField(
    //         decoration: const InputDecoration(
    //           border: OutlineInputBorder(),
    //           labelText: 'Enter Email ID',
    //         ),
    //         keyboardType: TextInputType.emailAddress,
    //         inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
    //       ),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.only(left: 20, right: 20, top: 25, bottom: 25),
    //       child: TextFormField(
    //         decoration: const InputDecoration(
    //           border: OutlineInputBorder(),
    //           labelText: 'Enter Phone Number',),
    //         keyboardType: TextInputType.number,
    //         inputFormatters: [FilteringTextInputFormatter.digitsOnly],
    //       ),
    //     ),
    //     const Text(
    //       'Address Details',
    //       style: TextStyle(
    //         color: Colors.black,
    //         fontFamily: 'OpenSans',
    //         fontSize: 25.0,
    //         fontWeight: FontWeight.bold,
    //       ),
    //     ),
    //     const Padding(
    //       padding: EdgeInsets.only(left: 20, right: 20, top: 25),
    //       child: TextField(
    //         decoration: InputDecoration(
    //           border: OutlineInputBorder(),
    //           hintText: 'Enter Street Name',
    //         ),
    //       ),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
    //       child: TextFormField(
    //         decoration: const InputDecoration(
    //           border: OutlineInputBorder(),
    //           labelText: 'Enter Flat/Suit/Apt No.',
    //         ),
    //       ),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.only(left: 20, right: 20, top: 25, bottom: 25),
    //       child: TextFormField(
    //         decoration: const InputDecoration(
    //           border: OutlineInputBorder(),
    //           labelText: 'Enter City',
    //         ),
    //       ),
    //     ),
    //     const Text(
    //       'Payment Info.',
    //       style: TextStyle(
    //         color: Colors.black,
    //         fontFamily: 'OpenSans',
    //         fontSize: 25.0,
    //         fontWeight: FontWeight.bold,
    //       ),
    //     ),
    //     Padding(
    //       padding: EdgeInsets.only(left: 20, right: 20, top: 25),
    //       child: TextField(
    //         decoration: InputDecoration(
    //           border: OutlineInputBorder(),
    //           hintText: 'Card Number',
    //         ),
    //         keyboardType: TextInputType.number,
    //         inputFormatters: [FilteringTextInputFormatter.digitsOnly],
    //       ),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
    //       child: TextFormField(
    //         decoration: const InputDecoration(
    //           border: OutlineInputBorder(),
    //           labelText: 'Expiry Date (i.e MM/YY)',
    //         ),
    //         keyboardType: TextInputType.datetime,
    //       ),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.only(left: 20, right: 20, top: 25, bottom: 25),
    //       child: TextFormField(
    //         obscureText: true,
    //         decoration: const InputDecoration(
    //           border: OutlineInputBorder(),
    //           labelText: 'CVV',
    //         ),
    //         inputFormatters: [FilteringTextInputFormatter.digitsOnly],
    //       ),
    //     ),
    //     Column(children: [
    //       ElevatedButton(
    //         onPressed: () {
    //           if (_formKey.currentState!.validate()) {
    //           //Navigator.push(context,  MaterialPageRoute(builder: (context) => SuccessPage())
    //             ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Processing Data')),
    //             );
    //           }
    //         },
    //         style: ElevatedButton.styleFrom(
    //             padding: const EdgeInsets.fromLTRB(50, 15, 50, 15)
    //         ),
    //         child: const Text('Place Order',style: TextStyle(fontSize: 20)),
    //       ),
    //     ],),
    //     Column(
    //         children:[
    //           SizedBox(height: 30),
    //         ]),
    //   ],
    // );
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
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
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 25),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Full Name',
                  ),
                  validator: (value) {
                      if (value == null || value.isEmpty) {
                      return 'Please Enter Full Name';
                      }
                      return null;
                  },
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Email ID';
                    }
                    return null;
                  },
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Phone Number';
                    }
                    return null;
                  },
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
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 25),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Street Name',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Street Name';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Flat/Suit/Apt No.',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Flat/Suit/Apt No.';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 25, bottom: 25),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter City',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter City';
                    }
                    return null;
                  },
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
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Card Number',
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Card Number';
                    }
                    return null;
                  },
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Expiry Date';
                    }
                    return null;
                  },
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
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter CVV';
                    }
                    return null;
                  },
                ),
              ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(context,  MaterialPageRoute(builder: (context) => SuccessPage()));
                }
              },
                style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.fromLTRB(50, 15, 50, 15)
            ),
              child: const Text('Place Order',style: TextStyle(fontSize: 20)),
            ),
          ),
          Column(
            children:[
              SizedBox(height: 30),
            ]),
        ],

      ),
    );
  }
}
