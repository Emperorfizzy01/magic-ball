import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(home: magicBall()),
    );

class magicBall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('Ask Me Anything'),
        ),
        body: Ball());
  }
}

class Ball extends StatefulWidget {
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int BallNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            BallNumber = Random().nextInt(5) + 1;
            print('Clicked');
          });
        },
        child: Image.asset('images/ball$BallNumber.png'),
      ),
    );
  }
}
