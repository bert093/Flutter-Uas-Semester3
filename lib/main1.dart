import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animate_do/animate_do.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FadeInUp(
          animate: true,
          duration: Duration(milliseconds: 1200),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 20),       
                  // Gambar utama
                  Container(
                    width: 330,
                    height: 330,
                    child: Image.asset(
                      'images/3-removebg.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 100),
                  // Text Title
                  const Text(
                    "Digital Transactions",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
              
                  // Subtitle
                  Text(
                    "Carrying Out Financial Transactions\nWith The Best Security",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 40),
                  // Indicator dan Button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Dots Indicator (Dynamic with List.generate)
                      SizedBox(width: 50),
                      Row(
                        children: List.generate(
                          3, // Jumlah bulat-bulat
                          (index) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4.0),
                            child: CircleAvatar(
                              radius: 5,
                              backgroundColor: index == 0
                                  ? Colors.purple
                                  : Colors.grey.shade400,
                            ),
                          ),
                        ),
                      ),
                      // Next Button
                      ElevatedButton(
                        onPressed: () {
                          // Tambahkan aksi next di sini
                        },
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(12),
                          backgroundColor: Color(0xFF8e7ab5), // Warna button
                        ),
                        child: FaIcon(
                          FontAwesomeIcons.arrowRight,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}