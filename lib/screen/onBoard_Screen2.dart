import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uas_kelompok6/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardApp2()
    );
  }
}

class OnBoardApp2 extends StatelessWidget {
  const OnBoardApp2 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FadeInUp(
          animate: true,
          duration: const Duration(milliseconds: 1200),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget> [
                  const SizedBox(height: 20),
                  Container(
                    width: 330,
                    height: 330,
                    child: Image.asset(
                      'images/3-removebg.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 100),
                  const Text(
                    'Transaction Confidence',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.purple),
                  ),
                  const SizedBox(height: 8),
                  // Subtitle
                  Text(
                    "Building Wealth, One Cash Saving at a Time",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40),
                  // Indicator dan Button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton( //* ELEVATEDBUTTON LEFT
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(12),
                          backgroundColor: const Color(0xFF8e7ab5),
                        ),
                        child: const FaIcon(
                          FontAwesomeIcons.arrowLeft,
                          color: Colors.white,
                        ),
                      ),
                      //* LIST.GENERATE UNTUK GAMBAR LINGKARAN
                      Row(
                        children: List.generate(3, // Jumlah bulat-bulat
                          (index) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4.0),
                            child: CircleAvatar(
                              radius: 5,
                              backgroundColor: index == 1 //* DIHITUNG DALAM INDEX
                                  ? const Color(0xFF8e7ab5)
                                  : Colors.grey.shade400,
                            ),
                          ),
                        ),
                      ),
                      // Next Button
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => OnBoardApp2()),
                          );
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