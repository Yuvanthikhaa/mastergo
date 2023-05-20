import 'package:flutter/material.dart';

void main() => runApp(Sub10App());

class Sub10App extends StatefulWidget {
  const Sub10App({Key? key}) : super(key: key);

  @override
  State<Sub10App> createState() => _Sub10AppState();
}

class _Sub10AppState extends State<Sub10App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Color.fromRGBO(242, 242, 242, 0.49),
            centerTitle: true,
            leading: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            title: Text(
              'Construction works',
              style: TextStyle(color: Color(0xff525464)),
            ),
            actions: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Image.asset(
                      'assets/images/Menu.png',
                      height: 30,
                      width: 18,
                    ),
                  )
                ],
              ),
            ]),
        body: Center(
            child: Column(children: [
          Container(
            margin: EdgeInsets.all(10.0),
            alignment: Alignment.center,
            padding: EdgeInsets.all(15.0),
            height: 60,
            width: 315,
            color: Color.fromRGBO(247, 247, 247, 1),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.search,
                  color: Color.fromRGBO(82, 84, 100, 1),
                ),
                Text(
                  '   Search by category',
                  style: TextStyle(color: Color.fromRGBO(176, 176, 195, 1)),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                ),
              ],
            ),
          ),
        ])));
  }
}
