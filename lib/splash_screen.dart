import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:
            Color(0xFF57535F), // Mengatur latar belakang menjadi warna #57535F
        child: Center(
          child: Image.asset(
            'assets/logo.png', // Path ke logo gambar di 'assets/logo.png'
            height: 150.0,
          ),
        ),
      ),
    );
  }
}
