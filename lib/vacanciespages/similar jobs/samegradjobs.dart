import 'package:flutter/material.dart';

class SameGrad extends StatefulWidget {
  const SameGrad({super.key});

  @override
  State<SameGrad> createState() => _SameGradState();
}

class _SameGradState extends State<SameGrad> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          backgroundColor: Colors.lightBlue,
        ),
      ),
    );
  }
}
