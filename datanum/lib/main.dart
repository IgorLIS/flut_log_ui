import 'package:flutter/material.dart';

void main() => runApp(MyWig());

class MyWig extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ferst wig',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        accentColor: Colors.white,
        fontFamily: 'Georgia',),
      home: OneHomePage(),
    );
  }
}

class OneHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.undo,
          color: Colors.white,
        ),
        title: Center(
          child: Text(
            'one programm',
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.mail),
            onPressed: () {},
          )
        ],
      ),


      body: Center(
        child: Container(
          height: 350,
          width: 350,
          
          decoration: new BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Colors.blueGrey,
        blurRadius: 90.0, // has the effect of softening the shadow
        spreadRadius: 1.0, // has the effect of extending the shadow
        offset: Offset(
          5.0, // horizontal, move right 10
          5.0, // vertical, move down 10
        ),
      )
    ],
    
  ),
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                'Авторизация',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  cursorColor: Colors.white,
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Password'),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  
                  color: Colors.grey,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  splashColor: Colors.white,
                  onPressed: () {},
                  child: Text(
                    'Войти',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
              ),
            )
          ],
        ),),
      ),
    );
  }
}
