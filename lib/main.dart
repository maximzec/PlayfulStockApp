import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              )
            ],
          ),
        ),
      ),
    ));
  }
}
