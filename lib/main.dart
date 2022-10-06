import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: Home()
      );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String output = '0';
  String _output = '0';
  dynamic num1 = 0.0;
  dynamic num2 = 0.0;
  String operand = "";
  buttonPressed(String buttonText) {
    if (buttonText == 'AC') {
      _output = "0";
      num1 = 0;
      num2 = 0;
      operand = "";
    } else if (buttonText == '+' ||
        buttonText == '-' ||
        buttonText == 'x' ||
        buttonText == '/') {
      num1 = double.parse(output);
      operand = buttonText;
      _output = "0";
    } else if (buttonText == '%') {
      //_output = _output
    } else if (buttonText == '.') {
      if (_output.contains(".")) {
        return;
      } else {
        _output = _output + buttonText;
      }
    } else if (buttonText == '=') {
      num2 = double.parse(output);
      if (operand == '+') {
        _output = (num1 + num2).toString();
      }
      if (operand == '-') {
        _output = (num1 - num2).toString();
      }
      if (operand == 'x') {
        _output = (num1 * num2).toString();
      }
      if (operand == '/') {
        _output = (num1 / num2).toString();
      }
      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    } else {
      _output = _output + buttonText;
    }
    setState(() {
      output = double.parse(_output).toString();
    });
  }

  @override
  Widget buildButton(String buttonText, int color, double width) {
    return InkWell(
        child: Container(
          width: width,
          height: 70,
          decoration: BoxDecoration(
            boxShadow: [
              const BoxShadow(
                  color: Color(0xff8bcbf6), blurRadius: 2, offset: Offset(1, 2))
            ],
            borderRadius: const BorderRadius.all(Radius.circular(2 / 2)),
          ),

          child: Text(buttonText,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(
                    color,
                  ),
                  fontSize: 50,
                  fontWeight: FontWeight.bold)),
          //color: Colors.blue,
        ),
        onTap: () {
          buttonPressed(buttonText);
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'NCalculator',
          textScaleFactor: 1,
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            alignment: Alignment.centerRight,
            width: 380,
            height: 80,
            decoration: BoxDecoration(
              //color: const Color(0xff5984ab),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              output,
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildButton("AC", 0xffffffff, 70),
              SizedBox(width: 20),
              buildButton("%", 0xfffffffff, 70),
              SizedBox(width: 20),
              buildButton("/", 0xffffffff, 70),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildButton("7", 0xff000000, 70),
              SizedBox(width: 20),
              buildButton("8", 0xff000000, 70),
              SizedBox(width: 20),
              buildButton("x", 0xffffffff, 70),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildButton("9", 0xff000000, 70),
              SizedBox(width: 20),
              buildButton("4", 0xff000000, 70),
              SizedBox(width: 20),
              buildButton("-", 0xffffffff, 70),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildButton("5", 0xff000000, 70),
              SizedBox(width: 20),
              buildButton("6", 0xff000000, 70),
              SizedBox(width: 20),
              buildButton("+", 0xffffffff, 70),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildButton("3", 0xff000000, 70),
              SizedBox(width: 20),
              buildButton("2", 0xff000000, 70),
              SizedBox(width: 20),
              buildButton(".", 0xffffffff, 70),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildButton("1", 0xff000000, 70),
              SizedBox(width: 20),
              buildButton("0", 0xff000000, 70),
              SizedBox(width: 20),
              buildButton("=", 0xff8338ec, 70)
            ],
          ),
        ],
      ),
    );
  }
}
