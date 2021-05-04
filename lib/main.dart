import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/stock-card-vertical.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        home: CupertinoPageScaffold(
      backgroundColor: Color(0xFFFFFFFF),
      child: SafeArea(
        top: true,
        child: FractionallySizedBox(
          widthFactor: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 13, left: 30),
                  child: Text('Home',
                      style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: 32,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 23),
                child: Container(
                  width: 354,
                  height: 125,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(10, 15),
                            blurRadius: 20,
                            color: Color(0x80FE5762))
                      ],
                      gradient: LinearGradient(
                          colors: [Color(0xFFFF6BA1), Color(0xFFFE5762)],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topCenter),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: EdgeInsets.only(top: 30, left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your total asset portfolio',
                          style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                              color: Color(0xFFFFFFFF)),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              '\$ 2.240.435',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 32,
                                  fontWeight: FontWeight.w600),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 40, left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("What's to Buy?",
                          style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.bold,
                              fontSize: 22)),
                      Text(
                        "See All →",
                        style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: Color(0xFFFE555D)),
                      )
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Container(
                    width: 500,
                    height: 170,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(right: 20),
                      children: [
                        StockVerticalCard("https://www.pngegg.com/ru/png-wvjee",
                            Color(0xFF676767), Color(0xFF000000)),
                        //StockVerticalCard(Color(0xFFDC4F00), Color(0xFFE80B0B)),
                        //StockVerticalCard(Color(0xFF5CE2FF), Color(0xFF0038FF)),

                        //Text('HELLO')
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    ));
  }
}
