import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'fist programm',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.pink[100],
      ),
      home: OnePage(),
    );
  }
}

class OnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Приложение для тестов'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.mic, color: Colors.pink,), onPressed: null),
          IconButton(icon: Icon(Icons.settings, color: Colors.pink,), onPressed: null),
          
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(25.0),
            color: Colors.pink[50],
            child: Center(
                child: 
              Container(
              width: 400,
              height: 550,
              color: Colors.pink,
              child: Column(
                
                children: <Widget>[
                Container(
                  width: 200,
                  height: 100,
                  color: Colors.teal,
                  child: Center(
                    child: Text('Кубик первый', style: TextStyle(color: Colors.white, fontSize: 20, ),),
                  ) 
                ),
                SizedBox(height: 20, ),
                Container(
                  width: 200,
                  height: 100,
                  color: Colors.yellow[200],
                  child: Center(
                    child: Text('Кубик второй', style: TextStyle(color: Colors.black, fontSize: 20, ),
                ),
                  ),
                ),
              
              ],
              ),
              // decoration: BoxDecoration(
              //   border: Border.all(
              //     color: Colors.teal,
              //     width: 10,
              //   ),
              //   // borderRadius:BorderRadius.circular(12),
              // ),
            ),),
            ),
            SizedBox(height: 15 ,),
          Container(
            
            width: 400,
            height: 100,
            color: Colors.red,
            child: FlatButton(onPressed: null, child: Text('КИДАЙ', style: TextStyle(color:Colors.white, fontSize: 30, ),),),
            
          )
        ],
      ),
    );
  }
}