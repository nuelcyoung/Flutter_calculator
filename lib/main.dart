import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Application name
        title: 'Flutter Hello World',
        // Application theme data, you can set the colors for the application as
        // you want
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // A widget which will be started on application startup
        debugShowCheckedModeBanner: false,
        home: Home());
  }
}

Widget _buildCard() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      InkWell(
          child: Container(
            width: 80,
            height: 80,
            child: const Text('1',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold)),
            color: Colors.blue,
          ),
          onTap: () {
            print("1");
          }),
      SizedBox(width: 20),
      Container(
        width: 80,
        height: 80,
        child: const Text('2',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold)),
        color: Color(0xff614906),
      ),
      SizedBox(width: 20),
      Container(
        width: 80,
        height: 80,
        child: const Text('3',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold)),
        color: Color(0xff0f5229),
      )
    ],
  );
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text(title),
        ),
        body: _buildCard());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Calculator'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            alignment: Alignment.centerRight,
            color: Colors.grey,
            width: 400,
            height: 60,
            child: Text(
              '0',
              style: TextStyle(fontSize: 40),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  child: Container(
                    width: 80,
                    height: 80,
                    child: const Text('1',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold)),
                    color: Colors.blue,
                  ),
                  onTap: () {
                    print("1");
                  }),
              SizedBox(width: 20),
              Container(
                width: 80,
                height: 80,
                child: const Text('2',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold)),
                color: Color(0xff614906),
              ),
              SizedBox(width: 20),
              Container(
                width: 80,
                height: 80,
                child: const Text('3',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold)),
                color: Color(0xff0f5229),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 80,
                height: 80,
                child: const Text('4',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold)),
                color: Color(0xff1a6627),
              ),
              SizedBox(width: 20),
              Container(
                width: 80,
                height: 80,
                child: const Text('5',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold)),
                color: Color(0xff3d2998),
              ),
              SizedBox(width: 20),
              Container(
                width: 80,
                height: 80,
                child: const Text('6',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold)),
                color: Color(0xff6d1d3c),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 80,
                height: 80,
                child: const Text('7',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold)),
                color: Color(0xff250b6e),
              ),
              SizedBox(width: 20),
              Container(
                width: 80,
                height: 80,
                child: const Text('8',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold)),
                color: Color(0xff729073),
              ),
              SizedBox(width: 20),
              Container(
                width: 80,
                height: 80,
                child: const Text('9',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold)),
                color: Color(0xff8178e7),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 80,
                height: 80,
                child: const Text('0',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold)),
                color: Color(0xff250b6e),
              ),
              SizedBox(width: 20),
              Container(
                width: 80,
                height: 80,
                child: const Text('+',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold)),
                color: Color(0xff729073),
              ),
              SizedBox(width: 20),
              Container(
                width: 80,
                height: 80,
                child: const Text('*',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold)),
                color: Color(0xffc9cb31),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 80,
                height: 80,
                child: const Text('-',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold)),
                color: Color(0xff250b6e),
              ),
              SizedBox(width: 20),
              Container(
                width: 80,
                height: 80,
                child: const Text('.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold)),
                color: Color(0xff729073),
              ),
              SizedBox(width: 20),
              Container(
                width: 80,
                height: 80,
                child: const Text('/',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold)),
                color: Color(0xff98217a),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 335,
                height: 50,
                child: const Text('=',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold)),
                color: Color(0xff729073),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
