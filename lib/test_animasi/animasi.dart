import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

void main() {
  runApp(AnimasiApp());
}

class AnimasiApp extends StatelessWidget {
  const AnimasiApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ShakeY(
            from: 100,
            duration: Duration(seconds: 5),
            infinite: true,
            child: CircleAvatar(
              backgroundColor: Colors.blue,
            ),
          ),
        )
      ),
    );
  }
}