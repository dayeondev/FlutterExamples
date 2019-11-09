import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: _buildMaterialApp(),
    );
  }

  Widget _buildMaterialApp() {
    return MaterialApp(
        title: 'Grid Layout Example',
        home: Scaffold(
            appBar: AppBar(
              title: Text("Grid Layout Example"),
            ),
            body: Center(
              child: _buildGrid(),
            )));
  }

  Widget _buildGrid() {
    return GridView.extent(
      maxCrossAxisExtent: 150,
      padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
      mainAxisSpacing: 4,
      children: _buildGridTileList(30),
    );
  }

  List<Container> _buildGridTileList(int count) {
    return List.generate(
      
        count, (i) => Container(
          // padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
          child: Image.asset('images/pic$i.jpg')));
  }
}
