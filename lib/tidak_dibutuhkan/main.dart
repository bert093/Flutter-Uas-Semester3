import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MainAppHome());
  }
}

class MainAppHome extends StatelessWidget {
  const MainAppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Image.asset(
            'images/finance-home.png',
            width: 300,
            height: 300,
          ),
          Text(
            'Digital Transaction',
            style: TextStyle(
              fontSize: 20,
              color: Color(0xFF694C9F),
            ),
          ),
          Text(
            textAlign: TextAlign.center,
            'Carrying Out Financial Transactions\nWith The Best Security',
            style: TextStyle(
              fontSize: 15,
              color: Color(0xFF3E3B3B),
            ),
          )
        ],
      ),
    );
  }
}
