import 'package:flutter/material.dart';

import 'page4.dart';
import 'page2.dart';

void main() => runApp(Sub2App());

class Sub2App extends StatelessWidget {
  const Sub2App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
          Text('Insured \norders',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Color.fromRGBO(82, 84, 100, 1)),
              textAlign: TextAlign.center),
          Image.asset('assets/images/page3.jpg', height: 238, width: 285),
          Text('We insure each order for the \namount of \$\500',
              style: TextStyle(
                  fontSize: 16, color: Color.fromRGBO(131, 131, 145, 1)),
              textAlign: TextAlign.center),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Sub3App()));
            },
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: 200,
              color: Color.fromRGBO(32, 195, 175, 1),
              child: Text(
                'Next',
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ),
          )
        ])));
  }
}
