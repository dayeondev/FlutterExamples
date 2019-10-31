import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State createState() {
    return MyAppState();
  }
}

typedef bufferFunc = void Function(String key);
const List OPERATORS = ['+', '-', '*', '/'];

class MyAppState extends State<MyApp> {
  

 
  double text = 0;
  String buffer = '';
  double op1 = 0;
  double op2 = 0;
  String operator = '';

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
            CalculatorButton('7'),
            CalculatorButton('8'),
            CalculatorButton('9'),
            CalculatorButton('X'),
          ]),
          Row(children: [
            CalculatorButton('4'),
            CalculatorButton('5'),
            CalculatorButton('6'),
            CalculatorButton('-'),
          ]),
          Row(children: [
            CalculatorButton('1'),
            CalculatorButton('2'),
            CalculatorButton('3'),
            CalculatorButton('+'),
          ]),
          Row(children: [
            CalculatorButton(' '),
            CalculatorButton('0'),
            CalculatorButton('.'),
            CalculatorButton('='),
          ]),
          Row(
            children: [
              Text('=> Result is $text'),
            ],
          )
        ]),
      ),
    );
  }

  Widget CalculatorButton(String key) {
    return RaisedButton(
      child: Text(key),
      onPressed: () {
        buttonPressed(key);
      },
    );
  }

  void buttonPressed(String key) {
    if (key == 'C') {
      buffer = '';
    } else if (OPERATORS.contains(key)) {
      op1 = double.parse(buffer);
      operator = key;
      buffer = '';
    } else if (key == '=') {
      op2 = double.parse(buffer);
      calculate(op1, op2, operator);
      buffer = '';
    } else {
      buffer += key;
    }
  }

  void calculate(double op1, double op2, String operator) {
    print('op1: $op1 , op2: $op2 , operator: $operator');
    double result = 0.0;
    if (operator == '+')
      result = op1 + op2;
    else if (operator == '-')
      result = op1 - op2;
    else if (operator == '*')
      result = op1 * op2;
    else
      result = op1 / op2;
    print('result is $result');
    showResult(result);
  }

  void showResult(double num){
    setState(() {
      text = num;
    });
  }
}
