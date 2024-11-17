import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int incrementNum = 0;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    void _increaseNumber() {
      setState(() {
        incrementNum++;
      });
    }

    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
            body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Count:" + incrementNum.toString()),
                GestureDetector(
                  onTap: _increaseNumber,
                  child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(color: Colors.amber),
                      child: Text("Tap me")),
                )
              ],
            ),
          ),
        )));
  }
}
