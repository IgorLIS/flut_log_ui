import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
  TextEditingController _controller = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  String text2;
  String text3;
  
  int _counter = 0;
  

  void _incrementCounter() {
    setState(() {
      
      _counter++;
      text3 = _controller2.text;
      text2 = _controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
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
                  
                ),

                
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
