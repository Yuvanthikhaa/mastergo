import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'page2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: kIsWeb ? false : false,
      home: Scaffold(
          body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
            Text(
              'Proven \nspecialists',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Color.fromRGBO(82, 84, 100, 1)),
              textAlign: TextAlign.center,
            ),
            Image.asset('assets/images/page1.jpg', height: 238, width: 285),
            Text('We check each specialist \nbefore he starts work',
                style: TextStyle(
                    fontSize: 16, color: Color.fromRGBO(131, 131, 145, 1)),
                textAlign: TextAlign.center),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Subapp()));
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 200,
                color: Color.fromRGBO(32, 195, 175, 1),
                child: Text(
                  'Next',
                  style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                ),
              ),
            ),
          ]))),
    );
  }
}
