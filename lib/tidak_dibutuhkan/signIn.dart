import 'package:flutter/material.dart';
void main() {
  runApp(const SignInApp());
}

class SignInApp extends StatelessWidget {
  const SignInApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget> [
                SizedBox(height: 60),
                Text(
                  'Sign In',
                  style: TextStyle(fontSize: 40, color: Colors.black87),
                ),
                TextField(
                  // obscureText: true,
                  decoration: InputDecoration(
                    label: const Text('Email'),
                    hintText: 'John Doe @gmail.com',
                    hintStyle: const TextStyle(color: Colors.black45),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    label: Text('Password'),
                    hintText: '',
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}