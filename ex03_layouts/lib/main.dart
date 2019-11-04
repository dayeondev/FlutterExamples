import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // debugPaintSizeEnabled = true;
    return buildMaterialApp();
  }

  Widget buildNonMaterialApp() => Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: Text(
            'Hello Dayeon',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 32,
              color: Colors.black87,
            ),
          ),
        ),
      );

  Widget buildMaterialApp() => MaterialApp(
        title: 'Flutter Layout Demo',
        // home: Scaffold(
        //   appBar: AppBar(
        //     title: Text('Flutter Layout Demo'),
        //   ),
        //   body: Center(
        //     // child: Text('Hello World'),
        //     child: buildPackingWidgets(),
        //   ),
        // ),
        home: buildHomePage('Strawberry Pavlova Recipe'),
      );

  Widget buildRow() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('images/pic1.jpg'),
          Image.asset('images/pic2.jpg'),
          Image.asset('images/pic3.jpg'),
        ],
      );

  Widget buildColumn() => Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('images/pic1.jpg'),
          Image.asset('images/pic2.jpg'),
          Image.asset('images/pic3.jpg'),
        ],
      );

  Widget buildExpandedRow() => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset('images/pic1.jpg'),
          ),
          Expanded(
            flex: 2,
            child: Image.asset('images/pic2.jpg'),
          ),
          Expanded(
            child: Image.asset('images/pic3.jpg'),
          ),
        ],
      );

  Widget buildPackingWidgets() => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.star, color: Colors.green[500]),
          Icon(Icons.star, color: Colors.green[500]),
          Icon(Icons.star, color: Colors.green[500]),
          Icon(Icons.star, color: Colors.black),
          Icon(Icons.star, color: Colors.black),
        ],
      );

  Widget buildHomePage(String title) {
    final titleText = Container(
      padding: EdgeInsets.all(20),
      child: Text(
        'Strawberry Pavlova',
        style: TextStyle(
          fontWeight: FontWeight.w800,
          letterSpacing: 0.5,
          fontSize: 30,
        ),
      ),
    );

    final subTitle = Text(
      'Pavlova is a meringue-based dessert named after the Russian ballerina '
      'Anna Pavlova. Pavlova features a crisp crust and soft, light inside, '
      'topped with fruit and whipped cream.',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'Georgia',
        fontSize: 25,
      ),
    );

    final stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.black),
        Icon(Icons.star, color: Colors.black),
      ],
    );

    final ratings = Container(
      
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          stars,
          Text(
            '170 Reviews',
            style: TextStyle(
              //Text 설정은 TextStyle로 한다.
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          )
        ],
      ),
    );

    // iconList에 사용될 TextStyle 지정
    final descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2,
    );

    final iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(
                  Icons.kitchen,
                  color: Colors.green[500],
                ),
                Text('PERP:'),
                Text('25 min')
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.timer,
                  color: Colors.green[500],
                ),
                Text('COOK:'),
                Text('1 hr')
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.restaurant,
                  color: Colors.green[500],
                ),
                Text('FEEDS:'),
                Text('4~6')
              ],
            ),
          ],
        ),
      ),
    );

    final leftColumn = Container(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        children: [
          titleText,
          subTitle,
          ratings,
          iconList,
        ],
      ),
    );

    final mainImage = Image.asset(
      'images/pavlova.jpg',
      fit: BoxFit.cover,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 40, 0, 30),
          height: 600,
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 440,
                  child: leftColumn,
                ),
                mainImage,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
