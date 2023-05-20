import 'package:flutter/material.dart';
import 'page3.dart';

void main() => runApp(Subapp());

class Subapp extends StatelessWidget {
  const Subapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
          Text('Honest \nratings',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Color.fromRGBO(82, 84, 100, 1)),
              textAlign: TextAlign.center),
          Image.asset('assets/images/page2.jpg', height: 238, width: 285),
          Text('We carefully check each specialist \nand put honest ratings',
              style: TextStyle(
                  fontSize: 16, color: Color.fromRGBO(131, 131, 145, 1)),
              textAlign: TextAlign.center),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Sub2App()));
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
