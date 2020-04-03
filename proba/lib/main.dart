import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());


  
  

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // int _counter = 0;
  int _num;
  int _one=12;

  void _incrementCounter() {
    setState(() {
      Random _ramnum = new Random();
      _num = _ramnum.nextInt(7); 
       if (_num == 0){
         _num++;
       }
      _one++;
      // print (_num); 
      // _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(color:Colors.pink),),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(0.8, 0.0),
                  colors: <Color>[Colors.white, Colors.blue[300]],
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.blueGrey[900],
                      offset: Offset(10.0, 2.0),
                      blurRadius: 30,
                    ),
                  ],

                  ),
        ),
        ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'ВАШЕ ЧИСЛО' ,
              style: TextStyle(color: Colors.grey, fontSize: 40,),
            ),
            Text(
              '$_one',
              style: TextStyle(color: Colors.grey, fontSize: 70,),
            ),
            Text(
              '$_num',
               style: TextStyle(color: Colors.grey, fontSize: 70,),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 150,
              width: 400,
              padding: EdgeInsets.all(40),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(0.8, 0.0),
                  colors: [
                    const Color(0xFF00E5FF),
                    const Color(0xFF00B0Ff),
                  ],
                  tileMode: TileMode.mirror,
                ),
              ),
              child: TextField(
                obscureText: false,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'OpenSans',
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(40),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Numbers'),
                maxLength: 10,
                validator: (String value) {
                  
                  if (value.isEmpty) {
                    return 'Name is Required';
                  }
                   return null;
                },
                onSaved: (var value) {
                  _one = value as int;
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.golf_course),
      ),
    );
  }
}
