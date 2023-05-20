import 'package:flutter/material.dart';
import 'page9.dart';

void main() => runApp(Sub7App());

class Sub7App extends StatefulWidget {
  const Sub7App({Key? key}) : super(key: key);

  @override
  State<Sub7App> createState() => _Sub7AppState();
}

class _Sub7AppState extends State<Sub7App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color.fromRGBO(82, 84, 100, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 72,
              width: 72,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                //borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color.fromRGBO(32, 195, 175, 1),
              ),
              child: Icon(
                Icons.home,
                size: 30,
                color: Colors.white,
              ),
            ),
            Container(
              height: 72,
              width: 72,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                //borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color.fromRGBO(50, 52, 64, 1),
              ),
              child: Icon(
                Icons.person,
                size: 30,
                color: Colors.white,
              ),
            ),
            Container(
              height: 72,
              width: 72,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                //borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color.fromRGBO(50, 52, 64, 1),
              ),
              child: Icon(
                Icons.settings,
                size: 30,
                color: Colors.white,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sub8App(),
                    ));
              },
              child: Container(
                height: 72,
                width: 72,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  //borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color.fromRGBO(50, 52, 64, 1),
                ),
                child: ImageIcon(
                  AssetImage('assets/images/mail.png'),
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
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
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            Padding(padding: EdgeInsets.all(1.0)),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/images/img.png',
                  height: 114,
                  width: 114,
                ),
                Padding(padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 26.0)),
                Text(
                  "Jeremías del Pozo",
                  style: TextStyle(
                      color: Color.fromRGBO(82, 84, 100, 1),
                      fontFamily: 'Ubuntu',
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
                Padding(padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 6.0)),
                Text(
                  'New York  • ID: 1120611',
                  style: TextStyle(
                      color: Color.fromRGBO(131, 131, 145, 1),
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
                Padding(padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 17.0)),
                Container(
                  child: Text(
                    'Edit',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Color.fromRGBO(255, 177, 157, 1),
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 24.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'About me',
                        style: TextStyle(
                            color: Color.fromRGBO(131, 131, 145, 1),
                            fontFamily: 'Gilroy',
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      height: 60,
                      width: 150,
                      color: Color.fromRGBO(226, 226, 224, 1),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Reviews',
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Gilroy',
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      height: 60,
                      width: 150,
                      color: Color.fromRGBO(32, 195, 175, 1),
                    )
                  ],
                )
              ],
            ),
            Container(
              color: Color.fromRGBO(82, 84, 100, 1),
              padding: EdgeInsets.fromLTRB(30, 40, 30, 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromRGBO(226, 226, 224, 1)),
                    ),
                    width: 315,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.call,
                          color: Color.fromRGBO(255, 177, 157, 1),
                        ),
                        Image.asset('assets/images/bar.png',
                            height: 42, width: 1),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Phone number',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 175, 169, 169),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Gilroy'),
                            ),
                            Text(
                              '+3746589923',
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Gilroy',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0)),
                  Container(
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromRGBO(226, 226, 224, 1)),
                    ),
                    width: 315,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ImageIcon(
                          AssetImage('assets/images/mail.png'),
                          size: 60,
                          color: Color.fromRGBO(255, 177, 157, 1),
                        ),
                        Image.asset('assets/images/bar.png',
                            height: 42, width: 1),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Email',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 175, 169, 169),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Gilroy'),
                            ),
                            Text(
                              'conrad@gmail.com',
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Gilroy',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0)),
                  Container(
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromRGBO(226, 226, 224, 1)),
                    ),
                    width: 315,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.circle,
                          size: 32,
                          color: Color.fromRGBO(255, 177, 157, 1),
                        ),
                        Image.asset('assets/images/bar.png',
                            height: 42, width: 1),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Completed projects',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 175, 169, 169),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Gilroy'),
                            ),
                            Text(
                              '248',
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Gilroy',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0)),
                ],
              ),
            )
          ])),
    );
  }
}
