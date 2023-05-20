import 'package:flutter/material.dart';
import 'page6.dart';

void main() => runApp(Sub4App());

class Sub4App extends StatefulWidget {
  const Sub4App({Key? key}) : super(key: key);

  @override
  State<Sub4App> createState() => _Sub4AppState();
}

class _Sub4AppState extends State<Sub4App> {
  bool _isHidden = true;
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Sign In',
            style: TextStyle(color: Color(0xff525464)),
          ),
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          actions: [
            GestureDetector(
                onTap: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Sub5app()));
                }),
                child: Column(
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
                )),
            //Image.asset('assets/Rectanglc.png'),
          ]),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(padding: EdgeInsets.all(10)),
          Image.asset('assets/images/page5.png', height: 145, width: 100),
          SizedBox(
            height: 60,
            width: 315,
            //margin: EdgeInsets.only(left: 30, right: 30, top: 50, bottom: 16),
            //padding: EdgeInsets.all(15.0),
            child: TextField(
              style: TextStyle(color: Colors.black),
              obscureText: false,
              controller: namecontroller,
              decoration: InputDecoration(
                  hintText: 'Username',
                  hintStyle: TextStyle(color: Color.fromRGBO(176, 176, 195, 1)),
                  filled: true,
                  fillColor: Color.fromRGBO(247, 247, 247, 1)),
            ),
          ),
          SizedBox(
            height: 60,
            width: 315,
            //margin: EdgeInsets.only(left: 30, right: 30, top: 50, bottom: 16),
            //padding: EdgeInsets.all(15.0),
            child: TextField(
              style: TextStyle(color: Colors.black),
              obscureText: _isHidden,
              controller: passcontroller,
              decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Color.fromRGBO(176, 176, 195, 1)),
                  filled: true,
                  suffix: InkWell(
                    onTap: _togglePasswordView,
                    child: Icon(Icons.visibility),
                  ),
                  //suffix: Icon(Icons.lock),
                  fillColor: Color.fromRGBO(247, 247, 247, 1)),
            ),
          ),
          Container(
              height: 18,
              width: 184,
              //alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(left: 180, right: 0, top: 0, bottom: 15),
              //padding: EdgeInsets.all(15.0),
              child: Text(
                'Forgot your password?',
                style: TextStyle(color: Color.fromRGBO(131, 131, 145, 1)),
              )),
          Container(
            alignment: Alignment.center,
            height: 60,
            width: 315,
            color: Color.fromRGBO(32, 195, 175, 1),
            child: Text(
              'Login',
              style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 19,
            width: 16,
            //color: Color.fromRGBO(32, 195, 175, 1),
            child: Text(
              'or',
              style: TextStyle(color: Color.fromRGBO(131, 131, 145, 1)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 60,
                width: 100,
                child: Image.asset('assets/images/fb.png'),
              ),
              SizedBox(
                height: 60,
                width: 100,
                child: Image.asset('assets/images/twitter.png'),
              ),
              SizedBox(
                height: 60,
                width: 100,
                child: Image.asset('assets/images/link.png'),
              ),
              //Image.asset('assets/fb.png'),
              //Image.asset('assets/twitter.png'),
              //Image.asset('assets/link.png')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?  ",
                style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontSize: 16,
                    color: Color.fromRGBO(131, 131, 145, 1)),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Sub5app()));
                },
                child: Text(
                  "Sign up",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontFamily: 'Gilroy',
                      fontSize: 16,
                      color: Color.fromRGBO(255, 177, 157, 1)),
                ),
              ),
            ],
          )
        ],
      )),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
