import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Random Number'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String random = 'x';

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
            const Text(
              '1-100',
            ),
            Text(
                '$random',
                style: TextStyle(
                  fontSize: 100,
                )
            ),
          ],
        ),
      ),


      floatingActionButton:SizedBox(
        width: 100,
        height: 100,
        child:FloatingActionButton(
          onPressed: (){
            setState(() {
              random = (Random().nextInt(101)+1).toString();
            });
          },
          child: const Icon(Icons.touch_app),
        ),
      ),
    );
  }
}