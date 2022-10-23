import 'package:flutter/material.dart';
import 'dart:math';

import 'package:zand_dice/contents.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZAND DICE',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.orange,
          fontFamily: 'Mikhak'),
      home: const GameScreen(),
    );
  }
}

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  int topDiceNumber = 1;
  int bottomDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[300],
      appBar: AppBar(
        title: const Center(
          child: Text(
            'بازی شانس',
            style: kStyleTitleText,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            splashColor: Colors.orange,
            onPressed: () {
              setState(() {
                topDiceNumber = Random().nextInt(6) + 1;
                bottomDiceNumber = Random().nextInt(6) + 1;
              });
            },
            icon: Image.asset('images/dice_$topDiceNumber.png'),
            iconSize: 200.0,
          ),
          const SizedBox(
            height: 40.0,
          ),
          IconButton(
            splashColor: Colors.orange,
            onPressed: () {
              setState(() {
                topDiceNumber = Random().nextInt(6) + 1;
                bottomDiceNumber = Random().nextInt(6) + 1;
              });
            },
            icon: Image.asset('images/dice_$bottomDiceNumber.png'),
            iconSize: 200.0,
          ),
        ],
      ),
    );
  }
}
