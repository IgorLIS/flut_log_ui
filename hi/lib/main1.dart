import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
          IconButton(
              icon: Icon(
                Icons.mic,
                color: Colors.pink,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.pink,
              ),
              onPressed: null),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(25.0),
            
            
            child: Center(
              child: Container(
                width: 400,
                height: 550,
                decoration: BoxDecoration(
              color: Colors.pink[300],
              boxShadow: [
                BoxShadow(
                  color: Colors.red[200],
                  blurRadius: 20,
                  spreadRadius: 5,
                  offset: Offset(10, 10)
                ),

              ],
              borderRadius: BorderRadius.circular(30,),
            ),
                
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(width: 2.0),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'Кубик первый',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 2.0),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Image.network(
                            'https://c.dns-shop.ru/thumb/st1/fit_width/25/25/e805e9a66d0c74fcb2712ef9d47ce7b8/q100_a9172f7a3408f5119fb3803bf302f76a5ad3ac5da4f03600cb3b2af42df98a78.png'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.yellow[200],
                        boxShadow: [
                          BoxShadow(
                              color: Colors.yellow[100],
                              blurRadius: 30,
                              spreadRadius: 5,
                              offset: Offset(10, 2),
                              ),
                        ],
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                        child: Text(
                          'Кубик второй',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      '5',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 90,
                          fontWeight: FontWeight.bold),
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
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          
          Container(
              width: 400,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.red,
                  boxShadow: [BoxShadow(
                    color: Colors.red[200],
                    blurRadius:20,
                    spreadRadius: 5,
                    offset: Offset(20, 15)
                    
                  ),],
                  borderRadius: BorderRadius.circular(60),

              ),
              
              child: FlatButton(
                onPressed: null,
                child: Text(
                  'КИДАЙ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            
          
        ],
      ),
    );
  }
}
