import 'package:flutter/material.dart';
import 'package:hi2/homepages.dart';
import 'package:hi2/homepages2.dart';



class Choice extends StatefulWidget {
  @override
  _ChoiceState createState() => _ChoiceState();
}

class _ChoiceState extends State<Choice> {
  void _choiceOne() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyHomePage()),
      );
    });
  }

  void _choiceTwo() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyHomePage2()),
      );
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: FlatButton(
              onPressed: _choiceOne,
              child: Text(
                'Один камень',
                style: TextStyle(color: Colors.grey, fontSize: 50),
              ),
            ),
          ),
          SizedBox(
            height: 90,
          ),
          Container(
            child: Text(
              'или',
              style: TextStyle(color: Colors.grey, fontSize: 40),
            ),
          ),
          SizedBox(
            height: 90,
          ),
          Container(
            child: FlatButton(
              onPressed: _choiceTwo,
              child: Text(
                'Два камня',
                style: TextStyle(color: Colors.grey, fontSize: 50),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
