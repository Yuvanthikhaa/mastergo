import 'dart:ui';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/material.dart';
import 'page11.dart';

void main() => runApp(Sub9App());

class Sub9App extends StatelessWidget {
  Sub9App({Key? key}) : super(key: key);
  final _items = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
    'assets/images/4.png',
    'assets/images/5.png',
    'assets/images/6.png',
  ];
  final _des = [
    'Balcony repair',
    'Redecorating',
    'Interior decoration',
    'Painting works',
    'cj7 pillow',
    'stairs'
  ];

  final _cost = ['\$\24', '\$\60', '\$\54', '\$\42', '\$\69', '\$\420'];

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
            'Orders in progress',
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              child: masonryLayout(context),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                alignment: Alignment.center,
                height: 60,
                width: 150,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(226, 226, 224, 0.49),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white, spreadRadius: 10, blurRadius: 20)
                    ]),
                child: Text(
                  'Archive',
                  style: TextStyle(
                      color: Color.fromRGBO(131, 131, 145, 1),
                      fontFamily: 'Gilroy',
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Sub10App()));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 150,
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(32, 195, 175, 1),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white,
                            spreadRadius: 20,
                            blurRadius: 20)
                      ]),
                  child: Text(
                    'In work',
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Gilroy',
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }

  Widget masonryLayout(BuildContext context) {
    return MasonryGridView.builder(
        scrollDirection: Axis.vertical,
        //crossAxisSpacing: 13,
        mainAxisSpacing: 25,
        itemCount: _items.length,
        gridDelegate:
            SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                _items[index],
              ),
              /*ClipRect(
                child: Image.asset(_items[index]),
              ),*/
              SizedBox(
                height: 11,
              ),
              Text(
                _des[index],
                style: TextStyle(
                    color: Color.fromRGBO(82, 84, 100, 1),
                    fontFamily: 'Gilroy'),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                _cost[index],
                style: TextStyle(
                    color: Color.fromRGBO(176, 176, 195, 1),
                    fontFamily: 'Gilroy'),
              )
            ],
          );
        });
  }
}
