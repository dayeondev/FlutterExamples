import 'package:flutter/material.dart';
import 'package:planets/model/Planet.dart';

class PlanetRow extends StatelessWidget {
  final Planet planet;

  PlanetRow(this.planet);

  @override
  Widget build(BuildContext context) {
    final baseTextStyle = const TextStyle(
      fontFamily: 'Poppins',
    );
    final regularTextStyle = baseTextStyle.copyWith(
      color: const Color(0xffb6b2df),
      fontSize: 9.0,
      fontWeight: FontWeight.w400,
    );
    final subHeaderTextStyle = regularTextStyle.copyWith(
      fontSize: 12.0,
    );
    final headerTextStyle = baseTextStyle.copyWith(
      color: Colors.white,
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
    );

    Widget _planetValue({String value, String image}) {
      return new Row(
        children: <Widget>[
          new Image.asset(image, height: 12.0),
          new Container(width: 8.0),
          new Text(value, style: regularTextStyle),
        ],
      );
    }

    final planetCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(76.0, 16.0, 16.0, 16.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 4.0),
          new Text(
            planet.name,
            style: headerTextStyle,
          ),
          new Container(height: 10.0),
          new Text(
            planet.location,
            style: subHeaderTextStyle,
          ),
          new Container(
            margin: new EdgeInsets.symmetric(vertical: 8.0),
            height: 2.0,
            width: 18.0,
            color: new Color(0xff00c6ff),
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                child: _planetValue(
                  value: planet.distance,
                  image: "assets/img/ic_distance.png",
                ),

                // child: new Row(children: <Widget>[
                //   new Image.asset("assets/img/ic_distance.png", height: 12.0),
                //   new Container(width: 8.0),
                //   new Text(planet.distance, style: regularTextStyle),
                // ]),
              ),
              new Expanded(
                child: _planetValue(
                  value: planet.gravity,
                  image: "assets/img/ic_gravity.png",
                ),
                // child: new Row(children: <Widget>[
                //   new Image.asset("assets/img/ic_gravity.png", height: 12.0),
                //   new Container(width: 8.0),
                //   new Text(planet.gravity, style: regularTextStyle),
                // ]),
              ),
            ],
          ),
          // 위의 코드를 사용시 간격 자동조정
          // new Row(
          //   children: <Widget>[
          //     new Image.asset("assets/img/ic_distance.png", height: 12.0),
          //     new Container(width: 8.0),
          //     new Text(planet.distance,
          //       style: regularTextStyle,
          //     ),
          //     new Container(width: 24.0),
          //     new Image.asset("assets/img/ic_gravity.png", height: 12.0),
          //     new Container(width: 8.0),
          //     new Text(planet.gravity,
          //       style: regularTextStyle,
          //     ),
          //   ],
          // ),
        ],
      ),
    );

    final planetCard = new Container(
      child: planetCardContent,
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
        image: new AssetImage(planet.image),
        height: 92.0,
        width: 92.0,
      ),
    );

    return new Container(
      height: 124.0,
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
      ),
    );
  }
}
