import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Simple Calculator'),
        ),
        body: Column(children: [
          Row(children: [
            _newCalculatorButton('7'),
            _newCalculatorButton('8'),
            _newCalculatorButton('9'),
            _newCalculatorButton('X'),
          ]),
          Row(children: [
            _newCalculatorButton('4'),
            _newCalculatorButton('5'),
            _newCalculatorButton('6'),
            _newCalculatorButton('-'),
          ]),
          Row(children: [
            _newCalculatorButton('1'),
            _newCalculatorButton('2'),
            _newCalculatorButton('3'),
            _newCalculatorButton('+'),
          ]),
          Row(children: [
            _newCalculatorButton(' '),
            _newCalculatorButton('0'),
            _newCalculatorButton('.'),
            _newCalculatorButton('='),
          ]),

          // Row(children: [
          //   RaisedButton(child: Text('7'), onPressed: () { addNumbers('7'); },),
          //   RaisedButton(child: Text('8'), onPressed: () { addNumbers('8'); },),
          //   RaisedButton(child: Text('9'), onPressed: () { addNumbers('9'); },),
          //   RaisedButton(child: Text('X'), onPressed: () { addNumbers('X'); },),
          // ]),
          // Row(children: [
          //   RaisedButton(child: Text('4'), onPressed: () { addNumbers('4'); },),
          //   RaisedButton(child: Text('5'), onPressed: () { addNumbers('5'); },),
          //   RaisedButton(child: Text('6'), onPressed: () { addNumbers('6'); },),
          //   RaisedButton(child: Text('-'), onPressed: () { addNumbers('-'); },),
          // ]),
          // Row(children: [
          //   RaisedButton(child: Text('1'), onPressed: () { addNumbers('1'); },),
          //   RaisedButton(child: Text('2'), onPressed: () { addNumbers('2'); },),
          //   RaisedButton(child: Text('3'), onPressed: () { addNumbers('3'); },),
          //   RaisedButton(child: Text('+'), onPressed: () { addNumbers('+'); },),
          // ]),
          // Row(children: [
          //   RaisedButton(child: Text(' '), onPressed: () { addNumbers(' '); },),
          //   RaisedButton(child: Text('0'), onPressed: () { addNumbers('0'); },),
          //   RaisedButton(child: Text('.'), onPressed: () { addNumbers('.'); },),
          //   RaisedButton(child: Text('='), onPressed: () { addNumbers('='); },),
          // ]),
        ]),
      ),
    );
  }

  Widget _newCalculatorButton(String str) {
    return RaisedButton(
      child: Text(str),
      onPressed: () {
        addNumbers(str);
      },
    );
  }
}
void addNumbers(String key) {
  print('calc key >>' + key);

}