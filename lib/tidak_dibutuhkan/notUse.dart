import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Bagian Skip Button
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                    // Tambahkan aksi di sini
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),       
              // Gambar utama
              Container(
                width: 300,
                height: 300,
                child: Image.asset(
                  'images/finance-home-removebg.png',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 100),
              // Text Title
              Text(
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
    );
  }
}