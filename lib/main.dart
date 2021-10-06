import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text(
            'Match Photos',
            style: TextStyle(fontFamily: 'Amiri'),
          ),
          backgroundColor: Colors.red,
        ),
        body: MyApp(),
      ),
    ),
  );
}

//ا)اذا حطينا المتغير داخل الbuild),سوف يتغير بمجرد الضغط على الحف
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void ChangeImages() {
    RightImageNumber = Random().nextInt(9) + 1;
    LeftImageNumber = Random().nextInt(9) + 1;
  }

  int LeftImageNumber = 1;
  int RightImageNumber = 2;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          LeftImageNumber == RightImageNumber
              ? "Congratulations, you succeeded"
              : "Try Again",
          style: TextStyle(
            fontSize: 50,
            fontFamily: "Amiri",
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      ChangeImages();
                    });
                  },
                  child: Image.asset(
                    'images/butshy$LeftImageNumber.jpg',
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      ChangeImages();
                    });
                  },
                  child: Image.asset(
                    'images/butshy$RightImageNumber.jpg',
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
