import 'package:flutter/material.dart';

class StockVerticalCard extends StatelessWidget {
  String photoUrl;
  Color startColor, endColor;

  StockVerticalCard(this.photoUrl, this.startColor, this.endColor);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Container(
        width: 134,
        height: 170,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [startColor, endColor]),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  offset: Offset(10, 7),
                  color: Color(0x40000000),
                  blurRadius: 25)
            ]),
        child: SizedBox(
          width: 24,
          height: 24,
          child: Image.network(photoUrl),
        ),
      ),
    );
  }
}
