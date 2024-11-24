import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icons_plus/icons_plus.dart';
void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInApp()
    );
  }
}

class SignInApp extends StatefulWidget{
const SignInApp ({super.key});

  @override
  _SignInAppState createState() => _SignInAppState();
}

class _SignInAppState extends State<SignInApp> {
  bool _obscureText = true;

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: <Widget> [
              const SizedBox(height: 60),
              const Text(
                'SignIn',
                style: TextStyle(fontSize: 40, color: Colors.black87),
              ),
              TextField(
                decoration: InputDecoration(
                  label: const Text('Email'),
                  hintText: 'JohnDoe@gmail.com',
                  hintStyle: const TextStyle(color: Colors.black45),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              //* TextField Password
              TextField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  label: const Text('Password'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText; //* obscureText true dan false (awalnya diatur true).
                      });
                    },
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              //* gunain ROW untuk text ke ujung kanan.
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Color(0xFF7A5EB0),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              //* Tombol SignIn
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF8E7AB5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Sign In',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Row(
                children: <Widget> [
                  Brand(Brands.google)
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}