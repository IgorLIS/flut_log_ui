import 'dart:math';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 1;
  // int _counter1;

  void _incrementCounter() {
    setState(() {
      var randomize = Random();

      // _counter++;

      _counter = randomize.nextInt(7);
      // _counter1 = randomize.nextInt(9);

      if (_counter == 0) {
        _counter++;
      }
      // if (_counter1==0){
      //   _counter1++;
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Игральные камни',
            style: TextStyle(color: Colors.blue),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Colors.cyan[50],
                  Colors.blue[100],
                  Colors.pink[200],
                ],
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.blueGrey[200],
                  offset: Offset(1.0, 6.0),
                  blurRadius: 30,
                )
              ]),
        ),
      ),

      body: Center(
        child: Column(

            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Text(
              //   'ОДИН КУБИК', style: TextStyle(fontSize: 50,),
              // ),
              // Text(
              //   '$_counter', style: TextStyle(fontSize: 20,),
              // ),

              Center(
                child: Container(
                  child: FlatButton(
                    onPressed: _incrementCounter,
                    child: Image.asset(
                      'images/dice$_counter.png',
                      color: Colors.blueGrey,
                      height: 300,
                      width: 300,
                    ),
                  ),
                ),
              ),

              // FlatButton(onPressed: _incrementCounter, child: Text('Кинуть'))
              
            ],),
      ),

      


      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.stars),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
