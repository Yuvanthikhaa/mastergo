import 'package:flutter/material.dart';

import 'page5.dart';
import 'page2.dart';

void main() => runApp(Sub3App());

class Sub3App extends StatelessWidget {
  const Sub3App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
          Text('Create \norder',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Color.fromRGBO(82, 84, 100, 1)),
              textAlign: TextAlign.center),
          Image.asset('assets/images/page4.jpg', height: 238, width: 285),
          Text("It's easy, just click on the plus",
              style: TextStyle(
                  fontSize: 16, color: Color.fromRGBO(131, 131, 145, 1)),
              textAlign: TextAlign.center),
          GestureDetector(
            onTap: (() {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Sub4App()));
            }),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                //borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color.fromRGBO(32, 195, 175, 1),
              ),
              alignment: Alignment.center,
              height: 70,
              width: 80,
              //color: Color.fromRGBO(32, 195, 175, 1),
              child: Text(
                '+',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1), fontSize: 50),
              ),
            ),
          ),
        ])));
  }
}
