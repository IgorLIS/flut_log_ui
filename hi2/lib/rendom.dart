import 'dart:math';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _controller = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  String text2;
  String text3;
  
  int _counter;
  int _counter1;
  int _counter3;

  void _incrementCounter() {
    setState(() {
      var randomize = Random();
      
      // _counter++;

      _counter = randomize.nextInt(9);
      _counter1 = randomize.nextInt(9);

      if (_counter==0){
        _counter++;
      }
      if (_counter1==0){
        _counter1++;
      }
      // _counter=_counter==0??_counter++;
      _counter3 =_counter1*_counter;

      text3 = _controller2.text;
      text2 = _controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        title: Center(child: Text(widget.title, style: TextStyle(color:Colors.blue),),) ,
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
                offset:Offset(1.0,6.0),
                blurRadius:30,
              )
            ]
        ),
      ),

      ),

      body: Center(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            Text(
              '$_counter1',
              style: Theme.of(context).textTheme.display1,
            ),
            Text(
              '$_counter3',
              style: Theme.of(context).textTheme.display1,
            ),
            Text(
              '$text2',
              style: TextStyle(color: Colors.cyan[300], fontSize: 50,),
            ),
            Text(
              '$text3',
              style: TextStyle(color: Colors.cyan[300], fontSize: 50,),
            ),
            Container(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: TextField(
                controller: _controller,
                style: TextStyle(fontSize: 20, color: Colors.blue),
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
                  prefixIcon: Icon(Icons.keyboard, color:Colors.blue, )
                ),

                
              ),
            ),
            Container(

              padding: EdgeInsets.only(left: 40, right: 40),
              child: TextField(
                controller: _controller2,
                style: TextStyle(fontSize: 20, color: Colors.blue),
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
                  prefixIcon: Icon(Icons.input),
                ),

                
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.stars),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
