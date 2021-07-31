import 'package:flutter/material.dart';
import 'package:flutter_shibumi/MyHomePage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
        child: Scaffold (
          backgroundColor: Colors.transparent,
          appBar: AppBar (
            title: Text ("shibumi store"),
          ),
          body: Center (
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
              ],
            ),
          ),
        ),
      ),

    );
  }
}
