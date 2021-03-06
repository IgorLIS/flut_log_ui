import 'dart:math';
import 'package:flutter/material.dart';

class MyHomePage2 extends StatefulWidget {
  MyHomePage2({Key key, this.title}) : super(key: key);

  

  final String title;

  @override
  _MyHomePage2State createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  
  
  
  int _counter=1;
  int _counter1=1;
  
  void _incrementCounter() {
    setState(() {
      var randomize = Random();
      
      // _counter++;

      _counter = randomize.nextInt(7);
      _counter1 = randomize.nextInt(7);

      if (_counter==0){
        _counter++;
      }
      if (_counter1==0){
        _counter1++;
      }
      

      
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        title: Center(
          child: Text(
            'Игральные камни',
            style: TextStyle(color: Colors.white),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              // gradient: LinearGradient(
              //   begin: Alignment.topLeft,
              //   end: Alignment.bottomRight,
              //   colors: <Color>[
              //     Colors.cyan[50],
              //     Colors.blue[100],
              //     Colors.pink[200],
              //   ],
              // ),
              color: Colors.blue,
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
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            Container(
                child: FlatButton(
                  onPressed: _incrementCounter,
                  child: Image.asset(
                    'images/dice$_counter.png',
                    // color: Colors.blueGrey,
                    height: 150,
                    width: 150,
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              SizedBox(height: 150,),
              Container(
                
                child: FlatButton(
                  onPressed: _incrementCounter,
                  child: Image.asset(
                    'images/dice$_counter1.png',
                    // color: Colors.blueGrey,
                    height: 150,
                    width: 150,
                    fit: BoxFit.fill,
                  ),
                ),
              ),


            // RaisedButton(onPressed: (){
            // Navigator.pop(context);
            // }, child: Text('Назад')),
            
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.stars),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
