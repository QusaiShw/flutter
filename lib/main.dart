import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 500,
                decoration: BoxDecoration(
                    color: Color(0xff8D0801),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                height: 200,
                alignment: Alignment.center,
                child: Image.asset("images/logomodified.png"),
              ),
              Container(
                
                alignment: Alignment.bottomCenter,
                width: 100,
                margin: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 380,
                  bottom: 10,
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text("Start"),
                  
                ),
                color: Color(0xff001427),
              )
            ],
          )
        ],
      ),
    );
  }
}
