/*
 * Project: magic-8-ball-flutter
 * File Created: Wednesday, 23rd February 2022 8:43:14 am
 * Author: Murat Gültürk m.gueltuerk@gmx.de, https://github.com/mgueltuerk
 * Last Modified: Friday, 25th February 2022 9:27:49 am
 * Copyright - 2022, Murat Gültürk
 * Published under GNU Public License (GPL)
 */
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      const MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade500,
      appBar: AppBar(
        title: const Center(
          child: Text('Ask Me Anything',
          ),
        ),
        backgroundColor: const Color.fromARGB(185, 15, 35, 124),
      ),
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
            if (kDebugMode) {
              print('I got clicked $ballNumber');
            }
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
