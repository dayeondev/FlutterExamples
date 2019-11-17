import 'package:flutter/material.dart';

class PlanetRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 120.0,
        // margin: const EdgeInsets.only(
        //   top: 16.0,
        //   bottom: 16.0,
        //   left: 24.0,
        //   right: 24.0,
        // ),

        // Same Code
        margin: EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 24,
        ),
        child: new Stack(
          children: <Widget>[
            planetCard, // 설명이 써있는 카드(베이스위젯)
            planetThumbnail, // 그 위에 얹어질 이미지 위젯
          ],
        ));
  }

  final planetCard = new Container(
    height: 124.0,
    margin: new EdgeInsets.only(left: 46.0),
    decoration: new BoxDecoration(
      color: new Color(0xFF333366),
      shape: BoxShape.rectangle,
      borderRadius: new BorderRadius.circular(8.0),
      boxShadow: <BoxShadow>[
        new BoxShadow(
          color: Colors.black12,
          blurRadius: 10.0,
          offset: new Offset(0.0, 10.0),
        ),
      ],
    ),
  );

  final planetThumbnail = new Container(
    margin: EdgeInsets.symmetric(
      vertical: 16.0,
    ),
    alignment: FractionalOffset.centerLeft,
    child: new Image(
      image: new AssetImage("assets/img/mars.png"),
      height: 92.0,
      width: 92.0,
    ),
  );
}
