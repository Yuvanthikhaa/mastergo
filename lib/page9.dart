import 'dart:ui';
import 'page10.dart';
import 'package:flutter/material.dart';

void main() => runApp(Sub8App());

class Sub8App extends StatelessWidget {
  const Sub8App({Key? key}) : super(key: key);

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
            'Notification',
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(padding: EdgeInsets.fromLTRB(47, 0, 0, 0)),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //block1
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(30, 10, 36, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/joel.png',
                      height: 50,
                      width: 50,
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
                    Column(
                      children: [
                        Text(
                          'Joel Rowe',
                          style: TextStyle(
                              color: Color.fromRGBO(82, 84, 100, 1),
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                        Text(
                          'Bitrow Company',
                          style: TextStyle(
                              color: Color.fromRGBO(131, 131, 145, 1),
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(36, 18, 36, 51),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Sorry, all the artists in the Interior Design\ncategory are busy right now. If\nyour task is still relevant - go to the\ntask details page and click "Extendtask”.',
                  style: TextStyle(color: Color.fromRGBO(97, 97, 115, 1)),
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //block2
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(30, 10, 36, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/cole.png',
                      height: 50,
                      width: 50,
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Cole Payne',
                          style: TextStyle(
                              color: Color.fromRGBO(82, 84, 100, 1),
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                        Text(
                          'Corporation Kraton',
                          style: TextStyle(
                              color: Color.fromRGBO(131, 131, 145, 1),
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(36, 18, 36, 51),
                alignment: Alignment.centerLeft,
                child: Text(
                  'We have found a contractor for your task "Cleaning services”. Please see the details.',
                  style: TextStyle(color: Color.fromRGBO(97, 97, 115, 1)),
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //block3
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(30, 10, 36, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/elva.png',
                      height: 50,
                      width: 50,
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Elva Stone',
                          style: TextStyle(
                              color: Color.fromRGBO(82, 84, 100, 1),
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                        Text(
                          'Grand Service Company',
                          style: TextStyle(
                              color: Color.fromRGBO(131, 131, 145, 1),
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(36, 18, 36, 51),
                alignment: Alignment.centerLeft,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "David Coleman is ready to complete your",
                        style: TextStyle(color: Color.fromRGBO(97, 97, 115, 1)),
                      ),
                      Text('assignment and get started soon! View',
                          style:
                              TextStyle(color: Color.fromRGBO(97, 97, 115, 1))),
                      Text("David's profile and carefully review the order",
                          style:
                              TextStyle(color: Color.fromRGBO(97, 97, 115, 1))),
                      Text('details. Then confirm the order.',
                          style:
                              TextStyle(color: Color.fromRGBO(97, 97, 115, 1)))
                    ]),
              )
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Sub9App()));
            },
            child: Container(
              alignment: Alignment.center,
              //padding: ,
              color: Color.fromRGBO(32, 195, 175, 1),
              height: 60,
              width: 315,
              child: Text(
                'View all',
                style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
